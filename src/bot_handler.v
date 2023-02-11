module vtelegram

import time
import log

pub struct Bot{
	token string
pub mut:
	offset int
	log log.Log
}

[params]
pub struct BotPollParams{
	GetUpdates
	// delay_time Time in milliseconds between getting updates
	delay_time int = 1000
	// dry_start If true then only last update will be processed (not which are received when bot was off earlier)
	dry_start bool
}

// Result struct is passed to all handlers, so it must be a parameter on receive function
pub struct Result {
pub mut:
	message Message
	query CallbackQuery
}
fn handle_update[T](app T, update Update){
	$for method in T.methods {
		if method.attrs.len == 0 {return}
		mut result := Result{message: update.message, query: update.callback_query}
		if method.attrs == [''] { //handling all messages
			app.$method(result)
		}
		// callback_query process
		else if update.callback_query.data != ''{
			for attr in method.attrs{
				if attr.contains('callback_query'){
					mut a := attr.split(':')
					value := a.last().trim_space() // callback:starts_with:value
					if attr.contains('starts_with'){
						if update.callback_query.data.starts_with(value){
							result.query.data = result.query.data.trim_string_left(value)
							app.$method(result)
						}
					}
					else if update.callback_query.data == value{
						app.$method(result)
					}
				}
				if attr == 'callback_query' { // for all callbacks: just [callback_query]
					app.$method(result)
				}
			}
		}
		//message process
		else if update.message.message_id != 0{
			for attr in method.attrs{
				if attr.contains('starts_with'){
					mut a := attr.split(':')
					value := a.last().trim_space() // starts_with:value
					if update.message.text.starts_with(value){
						result.message.text = result.message.text.trim_string_left(value)
						app.$method(result)
					}
				}
				else if update.message.text == attr {
					app.$method(result)
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
fn time_event[T](mut bot T){
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
						bot.$method()
					}
					time.sleep(iter*time.millisecond)
				}
			}
		}
	}
}
fn bot_poll[T](mut bot T, params BotPollParams){
	for {
		updates := bot.getupdates(
			offset: bot.offset, 
			limit: params.limit, 
			timeout:params.timeout, 
			allowed_updates:params.allowed_updates
		) or {
			[]Update{}
		}
		bot.log.debug('Received ${updates.len} updates')
		for u in updates{
			spawn handle_update(bot,u)
			bot.offset = u.update_id + 1
		}
		time.sleep(params.delay_time * time.millisecond)
	}
}

pub fn poll[T](mut bot T, params BotPollParams)!{
	println('Starting bot...')
	if params.dry_start {
		bot.offset = -1
	}
	mut threads := []thread{}
	threads << spawn time_event(mut bot)
	threads << spawn bot_poll(mut bot,params)
	threads.wait()
}

