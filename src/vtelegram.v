module vtelegram

import json
import net.http
import time

pub struct ResponseOK {
pub:
	ok bool                
	result string [raw]                
	description string        
}

pub struct ResponseNotOK {
pub:
	ok bool                
	error_code int                 
	description string              
}

const(
    endpoint  = "https://api.telegram.org/bot"
)

pub fn (b Bot) http_request(method string, _data string) !string {
    response := http.post_json("${endpoint}${b.token}/${method}", _data) !
	if response.status_code == 200 {
		response_body := json.decode(ResponseOK,response.body)!
		return response_body.result
	}
	else{
		response_body := json.decode(ResponseNotOK,response.body)!
		println('Error on ${method} ${time.now().str()}: Error Code: ${response_body.error_code}\nDescription: ${response_body.description}')
		println('Data: ${_data}')
	}
	return response.body
}
