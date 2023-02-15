module vtelegram

import time
import log

pub struct Bot {
	token string
pub mut:
	offset int
	log    log.Log
}

fn handle_update[T](app T, update Update) {
	$for method in T.methods {
		if method.attrs.len == 0 {
			return
		}
		mut update_new := update

		// message process
		if update.message.message_id != 0 {

			if method.attrs == ['message'] { // handling all messages
				app.$method(update_new)
			}
			else {
				for attr in method.attrs {
					if attr.contains('message') {
						mut a := attr.split(':')
						value := a.last().trim_space() // message:starts_with:value
						if attr.contains('starts_with') {
							if update.message.text.starts_with(value) {
								update_new.message.text = update_new.message.text.trim_string_left(value)
								app.$method(update_new)
							}
						} else if update.message.text == value {
							app.$method(update_new)
						}
					}
				}
			}
		}
		// callback_query process
		else if update.callback_query.data != '' {
			if method.attrs == ['callback_query'] { // for all callbacks: just [callback_query]
				app.$method(update_new)
			}
			else{
				for attr in method.attrs {
					if attr.contains('callback_query') {
						mut a := attr.split(':')
						value := a.last().trim_space() // callback:starts_with:value
						if attr.contains('starts_with') {
							if update.callback_query.data.starts_with(value) {
								update_new.callback_query.data = update_new.callback_query.data.trim_string_left(value)
								app.$method(update_new)
							}
						} else if update.callback_query.data == value {
							app.$method(update_new)
						}
					}
				}
			}
		}
		// edited_message process
		else if update.edited_message.message_id != 0 {
			for attr in method.attrs {
				if attr.contains('edited_message') {
					update_new.message = update.edited_message
					app.$method(update_new)
				}
			}
		}
		// channel_post process
		else if update.channel_post.message_id != 0 {
			for attr in method.attrs {
				if attr.contains('channel_post') {
					update_new.message = update.channel_post
					app.$method(update_new)
				}
			}
		}
		// edited_channel_post process
		else if update.edited_channel_post.message_id != 0 {
			for attr in method.attrs {
				if attr.contains('edited_channel_post') {
					update_new.message = update.edited_channel_post
					app.$method(update_new)
				}
			}
		}
		// inline_query process
		else if update.inline_query.id != '' {
			for attr in method.attrs {
				if attr.contains('inline_query') {
					update_new.inline_query = update.inline_query
					app.$method(update_new)
				}
			}
		}
		// chosen_inline_result process
		else if update.chosen_inline_result.result_id != '' {
			for attr in method.attrs {
				if attr.contains('chosen_inline_result') {
					update_new.chosen_inline_result = update.chosen_inline_result
					app.$method(update_new)
				}
			}
		}
		// shipping_query process
		else if update.shipping_query.id != '' {
			for attr in method.attrs {
				if attr.contains('shipping_query') {
					update_new.shipping_query = update.shipping_query
					app.$method(update_new)
				}
			}
		}
		// pre_checkout_query process
		else if update.pre_checkout_query.id != '' {
			for attr in method.attrs {
				if attr.contains('pre_checkout_query') {
					update_new.pre_checkout_query = update.pre_checkout_query
					app.$method(update_new)
				}
			}
		}
		// poll process
		else if update.poll.id != '' {
			for attr in method.attrs {
				if attr.contains('poll') {
					update_new.poll = update.poll
					app.$method(update_new)
				}
			}
		}
		// poll_answer process
		else if update.poll_answer.poll_id != '' {
			for attr in method.attrs {
				if attr.contains('poll_answer') {
					update_new.poll_answer = update.poll_answer
					app.$method(update_new)
				}
			}
		}
		// my_chat_member process
		else if update.my_chat_member.chat.id != 0 {
			for attr in method.attrs {
				if attr.contains('my_chat_member') {
					update_new.my_chat_member = update.my_chat_member
					app.$method(update_new)
				}
			}
		}
		// chat_member process
		else if update.chat_member.chat.id != 0 {
			for attr in method.attrs {
				if attr.contains('chat_member') {
					update_new.chat_member = update.chat_member
					app.$method(update_new)
				}
			}
		}
		// chat_join_request process
		else if update.chat_join_request.chat.id != 0 {
			for attr in method.attrs {
				if attr.contains('chat_join_request') {
					update_new.chat_join_request = update.chat_join_request
					app.$method(update_new)
				}
			}
		}
	}
}

[params]
pub struct BotPollingParams {
	GetUpdates 
	// delay_time Time in milliseconds between getting updates
	delay_time int = 1000
}

pub fn start_polling[T](mut bot T, params BotPollingParams) {
	println('Starting bot...')
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
