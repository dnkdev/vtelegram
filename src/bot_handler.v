module vtelegram

import time
import log

pub struct Bot {
	token string
pub mut:
	offset int
	log    log.Log
}

[params]
pub struct BotPollParams {
	GetUpdates // delay_time Time in milliseconds between getting updates
	delay_time int = 1000
	// dry_start If true then only last update will be processed (not which are received when bot was off earlier)
	dry_start bool
}

// Result struct is passed to all handlers, so it must be a parameter on receive function
pub struct Result {
pub mut:
	message Message
	query   CallbackQuery
}

fn handle_update[T](app T, update Update) {
	$for method in T.methods {
		if method.attrs.len == 0 {
			return
		}
		mut result := Result{
			message: update.message
			query: update.callback_query
		}
		if method.attrs == [''] { // handling all messages
			app.$method(result)
		}
		// callback_query process
		else if update.callback_query.data != '' {
			for attr in method.attrs {
				if attr.contains('callback_query') {
					mut a := attr.split(':')
					value := a.last().trim_space() // callback:starts_with:value
					if attr.contains('starts_with') {
						if update.callback_query.data.starts_with(value) {
							result.query.data = result.query.data.trim_string_left(value)
							app.$method(result)
						}
					} else if update.callback_query.data == value {
						app.$method(result)
					}
				}
				if attr == 'callback_query' { // for all callbacks: just [callback_query]
					app.$method(result)
				}
			}
		}
		// message process
		else if update.message.message_id != 0 {
			for attr in method.attrs {
				if attr.contains('starts_with') {
					mut a := attr.split(':')
					value := a.last().trim_space() // starts_with:value
					if update.message.text.starts_with(value) {
						result.message.text = result.message.text.trim_string_left(value)
						app.$method(result)
					}
				} else if update.message.text == attr {
					app.$method(result)
				}
			}
		}
	}
}

pub fn poll[T](mut bot T, params BotPollParams) {
	println('Starting bot...')
	if params.dry_start {
		bot.offset = -1
	}
	for {
		updates := bot.getupdates(
			offset: bot.offset
			limit: params.limit
			timeout: params.timeout
			allowed_updates: params.allowed_updates
		) or { []Update{} }
		bot.log.debug('Received ${updates.len} updates')
		for u in updates {
			spawn handle_update(bot, u)
			bot.offset = u.update_id + 1
		}
		time.sleep(params.delay_time * time.millisecond)
	}
}
