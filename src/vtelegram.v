module vtelegram

import json
import net.http
import time
import log

pub const (
	endpoint = 'https://api.telegram.org/bot'
)

pub struct Bot {
pub:
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

pub fn start_polling[T,N](mut bot T, args N) {
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
		) or {
			time.sleep(3000 * time.millisecond)
			[]Update{}
		}
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
		//b.log.error('api_request post_json ${api_method}: ${err} ${_data}')
		time.sleep(2000 * time.millisecond)
		return error('api_request post_json ${api_method}: ${err} ${_data}')
	}
	b.log.debug('Response: ${response.body}')
	if response.status_code == 200 {
		response_body := json.decode(ResponseOK, response.body) or {
			b.log.error('api_request ${err}')
			return ''
		}
		return response_body.result
	} else {
		response_body := json.decode(ResponseNotOK, response.body) or {
			b.log.error('api_request ${err}')
			b.log.flush()
			return error('api_request ${err}')
		}
		b.log.error('${api_method} Error occured: ${response_body.error_code} Description: ${response_body.description}\nData: ${_data}')
		b.log.flush()
		return error('${api_method} Error occured: ${response_body.error_code} Description: ${response_body.description}')
	}
	return response.body
}

pub fn (mut b Bot) api_multipart_form_request(api_method string, _data map[string]string, ufiles map[string][]http.FileData) !string {
	//println(form)
	mut header := http.new_header()
	header.set(.content_type, 'multipart/form-data')
	conf := http.PostMultipartFormConfig{
		form:_data
		files: ufiles
		header: header
	}
	b.log.debug('multipart/form-data request: ${api_method} ${conf.form} Files: ${conf.files.len}')
	response := http.post_multipart_form('${vtelegram.endpoint}${b.token}/${api_method}', conf)or {
		return error('${api_method} Request Failed: ${err}')
	}
	if response.status_code == 200 {
		b.log.debug('multipart/form-data Response: ${api_method} ${response.body}')
		response_body := json.decode(ResponseOK, response.body) or {
			b.log.error('multipart_form_request ${api_method} ${err}')
			return err
		}
		return response_body.result
	}
	else{
		response_body := json.decode(ResponseNotOK, response.body) or {
			b.log.error('multipart_form_request ${api_method} ${err}')
			return err
		}
		return error('${api_method} Error occured: ${response_body.error_code} ${response_body.description}')
	}
	return response.body
}
