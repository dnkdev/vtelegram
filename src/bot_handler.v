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
		mut result := Result{message: update.message, query: update.callback_query}
		if method.attrs == [''] { //handling all messages
			app.$method(result)
		}
		else if update.callback_query.data != ''{
			if method.attrs[0] == 'callback'{
				if method.attrs.len > 1 {
					if method.attrs[1] == 'starts_with'{
						if method.attrs.len > 2{
							for i := 2;i<method.attrs.len;i++{
								if update.callback_query.data.starts_with(method.attrs[i]){
									result.query.data = result.query.data.trim_string_left(method.attrs[i])
									app.$method(result)
								}
							}
						}
					}
					else if update.callback_query.data in method.attrs {
						app.$method(result)
					}
				}
				else if method.attrs.len == 1{
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

