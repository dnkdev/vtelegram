module vtelegram

import json
import net.http
import time
import log 

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

const (
	endpoint = 'https://api.telegram.org/bot'
)

pub fn (mut b Bot) http_request(api_method string, _data string) !string {
	b.log.debug('${api_method} ${_data} ${vtelegram.endpoint}${b.token}/${api_method}')
	if _data == '' {
		return ''
	}
	response := http.post_json('${vtelegram.endpoint}${b.token}/${api_method}', _data) or {
		b.log.error('${err}')
		time.sleep(2000 * time.millisecond)
		return ''
	}
	if response.status_code == 200 {
		response_body := json.decode(ResponseOK, response.body) or {
			b.log.error('http_request $err')
			return ''
		}
		return response_body.result
	} else {
		response_body := json.decode(ResponseNotOK, response.body) or {
			b.log.error('http_request $err')
			return ''
		}
		b.log.error('Error on ${api_method} ${time.now().str()}: Error Code: ${response_body.error_code}\nDescription: ${response_body.description}')
		b.log.error('Data: ${_data}')
	}
	return response.body
}
