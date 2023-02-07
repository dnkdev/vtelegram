module vtelegram

import time

pub struct Bot{
	token string
pub mut:
	offset int = 1
}
[params]
pub struct BotPollParams{
	GetUpdates
	delay_time int = 500
}

pub struct Result {
pub mut:
	message Message
	query CallbackQuery
}

fn handle_update[T](app T, update Update){
	$for method in T.methods {
		if method.attrs.len == 0 {
			return
		}
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
			//&& method.attrs[0] == 'starts_with'{
			match method.attrs[0]{
				'starts_with'{
					if method.attrs.len > 1 {
						for i := 1;i<method.attrs.len;i++{
							if update.message.text.starts_with(method.attrs[i]){
								result.message.text = result.message.text.trim_string_left(method.attrs[i])
								app.$method(result)
							}
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
	}
}
pub fn call_time_event[T](app T, mname string){
	$for method in T.methods {
		if method.name == mname{
			app.$method()
		}
	}
}
fn time_event[T](app T){
	for{
		$for method in T.methods{
			for attr in method.attrs{
				if attr.contains('time_event'){
					mut iter := 60_000
					mut a := attr.split(':')
					if a.len >= 2{
						for mut v in a{
							v = v.replace(' ', '')
							if v.int() != 0 {
								iter = v.int()
							}
						}
						app.$method()
					}
					time.sleep(iter*time.millisecond)
				}
			}
		}
	}
}
fn bot_poll[T](app T, params BotPollParams){
	mut last_offset := 0
	for {
		updates := app.getupdates(offset: last_offset, limit: params.limit, timeout:params.timeout, allowed_updates:params.allowed_updates)or{
			eprintln('Updates  not accepted\n$err')
			[]Update{}
		}
		for u in updates{
			spawn handle_update(app,u)
			last_offset = u.update_id + 1
		}
		time.sleep(params.delay_time * time.millisecond)
	}
}

pub fn poll[T](app T, params BotPollParams)!{
	println('Starting bot...')
	mut threads := []thread{}
	threads << spawn time_event(app)
	threads << spawn bot_poll(app,params)
	threads.wait()
}

