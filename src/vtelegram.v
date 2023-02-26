module vtelegram

import json
import net.http
import time
import log 

pub struct Bot {
	token string
pub mut:
	offset      int
	log         log.Log
	//middleware  Middleware
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

pub const (
	endpoint = 'https://api.telegram.org/bot'
)

pub fn (mut b Bot) http_request(api_method string, _data string) !string {
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

[params]
pub struct PollingConfig[T] {
	GetUpdates // delay_time Time in milliseconds between getting updates
	delay_time  int = 1000
	middleware_ T
}

pub struct Regular {}

pub fn start_polling[T, R](mut bot T, argument_arr ...R) {
	println('Starting bot...')
	bot.log.info('Starting bot...')
	bot.log.flush()
	args := argument_arr[0]
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
		free_middleware_data(&middleware)
		bot.log.flush()
		time.sleep(args.delay_time * time.millisecond)
	}
}
