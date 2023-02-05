module vtelegram

import time

pub struct Bot{
	token string
mut:
	offset int = 1
}
[params]
pub struct BotPollParams{
	GetUpdates
	pausetime int = 500
	
}
pub struct Result {
pub mut:
	message Message
	query CallbackQuery
}
fn handle_update[T](app T, update Update){
	$for method in T.methods {
		result := Result{message: update.message, query: update.callback_query}
		if method.attrs == [''] { //handling all messages
			app.$method(result)
		}
		else if update.callback_query.data != ''{
			if method.attrs[0] == 'callback'{
				if method.attrs.len > 1 {
					if method.attrs[1] == update.callback_query.data {
						app.$method(result)
					}
				}
				if method.attrs.len == 1{
					app.$method(result)
				}
			}
		}
		else{
			for m in method.attrs{
				if update.message.text == m {
					app.$method(result)
				}
			}
		}
	}
}

pub fn poll[T](app T,params BotPollParams)!{
	mut last_offset := 0
	println('Starting bot...')
	for {
		updates := app.getupdates(offset: last_offset)!
		for u in updates{
			spawn handle_update(app,u)
			last_offset = u.update_id + 1
		}
		time.sleep(params.pausetime * time.millisecond)
	}
}

