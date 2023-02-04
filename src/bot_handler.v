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
	pausetime int = 1000
	
}

fn handle_update[T](app T, update Update){
	$for method in T.methods {
		if method.attrs == [''] { //handling all messages
			app.$method(update.message)
		}
		else{
			for m in method.attrs{
				if update.message.text == m {
					app.$method(update.message)
				}
			}
		}
	}
}

pub fn poll[T](app T,params BotPollParams)!{
	mut last_offset := 0
	for {
		updates := app.getupdates(offset: last_offset)!
		for u in updates{
			spawn handle_update(app,u)
			last_offset = u.update_id + 1
		}
		time.sleep(params.pausetime * time.millisecond)
	}
}

