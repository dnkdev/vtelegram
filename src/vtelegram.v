module vtelegram

import json
import net.http
import time

pub const (
	endpoint = 'https://api.telegram.org/bot'
)

pub struct Bot {
pub:
	token string
pub mut:
	offset int
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
	GetUpdates
	delay_time  int = 1000 // Time in milliseconds between getting updates
	middleware_ T
}

pub struct Regular {}

fn register_middleware_db[T, N](bot T, mut mw N) {
	$for field in N.fields {
		$if field.name == 'db' {
			mw.$(field.name) = bot.$(field.name)
		}
	}
}

pub fn start_polling[T, N](mut bot T, args N) {
	println('${time.now()} Starting bot...')
	mut middleware := args.middleware_
	register_middleware_db(bot, mut &middleware)
	for {
		updates := bot.get_updates(
			offset: bot.offset
			limit: args.limit
			timeout: args.timeout
			allowed_updates: args.allowed_updates
		) or {
			time.sleep(5000 * time.millisecond)
			[]Update{}
		}
		$if vtelegram_debug ? {
			if updates.len > 0 {
				println('${time.now()} Received ${updates.len} updates')
			}
		}
		for u in updates {
			spawn handle_update(mut bot, mut &middleware, u)
			bot.offset = u.update_id + 1
		}
		time.sleep(args.delay_time * time.millisecond)
	}
}

pub fn (mut b Bot) api_request(api_method string, _data string) !string {
	if _data == '' {
		return error('api_request ${api_method}: _data is empty')
	}
	response := http.post_json('${vtelegram.endpoint}${b.token}/${api_method}', _data) or {
		$if vtelegram_debug ? {
			eprintln('api_request post_json ${api_method}: ${err} ${_data}')
		}
		return error('api_request post_json ${api_method}: ${err} ${_data}')
	}

	if response.status_code == 200 {
		response_body := json.decode(ResponseOK, response.body) or {
			$if vtelegram_debug ? {
				eprintln('${time.now()} api_request json.decode: ${err}')
			}
			return error('api_request ${err}')
		}
		$if vtelegram_debug ? {
			if response_body.result != '[]' {
				println('${time.now()} ${api_method} ${_data} Response: ${response.body}')
			}
		}
		return response_body.result
	} else {
		response_body := json.decode(ResponseNotOK, response.body) or {
			$if vtelegram_debug ? {
				eprintln('${time.now()} api_request json.decode: ${err}')
			}
			return error('api_request ${err}')
		}

		$if vtelegram_debug ? {
			eprintln('${time.now()} ${api_method} ${response_body.error_code} Description: ${response_body.description}\nData: ${_data}')
		}
		return error('${api_method} ${response_body.error_code} Description: ${response_body.description}')
	}
	return response.body
}

pub fn (mut b Bot) api_multipart_form_request(api_method string, _data map[string]string, ufiles map[string][]http.FileData) !string {
	// println(form)
	mut header := http.new_header()
	header.set(.content_type, 'multipart/form-data')
	conf := http.PostMultipartFormConfig{
		form: _data
		files: ufiles
		header: header
	}
	response := http.post_multipart_form('${vtelegram.endpoint}${b.token}/${api_method}',
		conf) or {
		$if vtelegram_debug ? {
			eprintln('${time.now()} api_multipart_form_request: ${api_method} ${err}')
		}
		return error('${api_method} Request Failed: ${err}')
	}

	$if vtelegram_debug ? {
		eprintln('${time.now()} multipart/form-data request: ${api_method} ${conf.form} Files: ${conf.files.len}\nResponse: ${response.body}')
	}

	if response.status_code == 200 {
		response_body := json.decode(ResponseOK, response.body) or {
			$if vtelegram_debug ? {
				eprintln('${time.now()} multipart_form_request ResponseOK json.decode: ${api_method} ${err}')
			}
			return err
		}
		return response_body.result
	} else {
		response_body := json.decode(ResponseNotOK, response.body) or {
			$if vtelegram_debug ? {
				eprintln('${time.now()} multipart_form_request ResponseNotOK json.decode: ${response.status_msg} ${api_method} ${err}')
			}
			return err
		}
		return error('${api_method} ${response_body.error_code} ${response_body.description}')
	}
	return response.body
}
