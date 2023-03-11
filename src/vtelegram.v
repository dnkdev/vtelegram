module vtelegram

import json
import net.http
import time
import log 

pub const (
	endpoint = 'https://api.telegram.org/bot'
)

pub struct Bot {
	token string
pub mut:
	offset      int
	log         log.Log
}

pub struct ResponseOK {
pub:
	ok          bool
	result      string [raw]
	description string
}

pub struct ResponseNotOK {
pub:
	ok          bool
	error_code  int
	description string
}

[params]
pub struct PollingConfig[T] {
	GetUpdates // delay_time Time in milliseconds between getting updates
	delay_time  int = 1000
	middleware_ T
}

pub struct Regular {}

pub fn start_polling[T, R](mut bot T, args R) {
	println('Starting bot...')
	bot.log.info('Starting bot...')
	bot.log.flush()
	mut middleware := args.middleware_
	for {
		updates := bot.get_updates(
			offset: bot.offset
			limit: args.limit
			timeout: args.timeout
			allowed_updates: args.allowed_updates
		) or { []Update{} }
		if updates.len > 0 {
			bot.log.debug('Received ${updates.len} updates')
		}
		for u in updates {
			spawn handle_update(bot, mut &middleware, u)
			bot.offset = u.update_id + 1
		}
		bot.log.flush()
		time.sleep(args.delay_time * time.millisecond)
	}
}

pub fn (mut b Bot) api_request(api_method string, _data string) !string {
	b.log.debug('${api_method} ${_data}')
	if _data == '' {
		return ''
	}
	response := http.post_json('${vtelegram.endpoint}${b.token}/${api_method}', _data) or {
		b.log.error('${err}')
		time.sleep(2000 * time.millisecond)
		return ''
	}
	b.log.debug('Response: ${response.body}')
	if response.status_code == 200 {
		response_body := json.decode(ResponseOK, response.body) or {
			b.log.error('http_request $err')
			return ''
		}
		return response_body.result
	} else {
		response_body := json.decode(ResponseNotOK, response.body) or {
			b.log.error('http_request $err')
			b.log.flush()
			return error('http_request $err')
		}
		b.log.error('${api_method} response: Error Code: ${response_body.error_code} Description: ${response_body.description}')
		b.log.error('${api_method} Data: ${_data}')
		b.log.flush()
		return error('${api_method} response: Error Code: ${response_body.error_code} Description: ${response_body.description}')
	}
	return response.body
}

pub fn (mut b Bot) api_multipart_form_request[T](api_method string, _data T, ufiles map[string][]http.FileData) !string {

	mut form := map[string]string{}
	$for field in T.fields {
		form[field.name] = _data.$(field.name).str()
		$if field.name == 'reply_markup'{
			form['reply_markup'] = json.encode(_data.$(field.name))
		}
	}

	mut header := http.new_header()
	header.set(.content_type, 'multipart/form-data')
	conf := http.PostMultipartFormConfig{
		form:form
		files: ufiles
		header: header
	}
	b.log.debug('multipart/form-data request: $api_method ${conf.form} Files count: ${conf.files.len}')
	response := http.post_multipart_form('${vtelegram.endpoint}${b.token}/${api_method}', conf)or {
		return error('Request Failed: ${err}')
	}
	b.log.debug('Response: ${response.body}')
	return response.body
}