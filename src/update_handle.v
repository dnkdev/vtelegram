module vtelegram

pub struct Result {
pub:
	update Update
pub mut:
	data map[string]string
}

fn handle_update[T, R](app T, mut middleware R, update Update) {
	mut update_new := update
	// middleware
	if R.name != 'vtelegram.Regular' {
		if !aggregate_middlewares(mut middleware, mut update_new) {
			return
		}
	}
	// filters -> handlers after middleware
	result := Result{
		update: update_new
		data: get_middleware_data(&middleware)
	}
	$for method in T.methods {
		//println('processing ${method.name}')

		if method.attrs.len > 0 {
		
			if is_method_relate_to_type(update, method.attrs) {
				if is_handler_pass_filters(update, method.attrs) {
					app.$method(result)
				}
			}

		}

		//
		//
		//

		// message process
		// if update_new.message.message_id != 0 {
		// 	if method.attrs == ['message'] { // handling all messages
		// 		app.$method(result)
		// 	} else {
		// 		for attr in method.attrs {
		// 			if attr.contains('message') {
		// 				mut a := attr.split(':')
		// 				value := a.last().trim_space() // message:starts_with:value
		// 				if attr.contains('starts_with') {
		// 					if update_new.message.text.starts_with(value) {
		// 						// update_new.message.text = update_new.message.text.trim_string_left(value)
		// 						app.$method(result)
		// 					}
		// 				} else if update_new.message.text == value {
		// 					app.$method(result)
		// 				}
		// 			}
		// 		}
		// 	}
		// }
		// // callback_query process
		// else if update_new.callback_query.data != '' {
		// 	if method.attrs == ['callback_query'] { // for all callbacks: just [callback_query]
		// 		app.$method(result)
		// 	} else {
		// 		for attr in method.attrs {
		// 			if attr.contains('callback_query') {
		// 				mut a := attr.split(':')
		// 				value := a.last().trim_space() // callback:starts_with:value
		// 				if attr.contains('starts_with') {
		// 					if update_new.callback_query.data.starts_with(value) {
		// 						// update_new.callback_query.data = update_new.callback_query.data.trim_string_left(value)
		// 						app.$method(result)
		// 					}
		// 				} else if update_new.callback_query.data == value {
		// 					app.$method(result)
		// 				}
		// 			}
		// 		}
		// 	}
		// }
		// // edited_message process
		// else if update_new.edited_message.message_id != 0 {
		// 	for attr in method.attrs {
		// 		if attr.contains('edited_message') {
		// 			update_new.message = update_new.edited_message
		// 			app.$method(result)
		// 		}
		// 	}
		// }
		// // channel_post process
		// else if update_new.channel_post.message_id != 0 {
		// 	for attr in method.attrs {
		// 		if attr.contains('channel_post') {
		// 			update_new.message = update_new.channel_post
		// 			app.$method(result)
		// 		}
		// 	}
		// }
		// // edited_channel_post process
		// else if update_new.edited_channel_post.message_id != 0 {
		// 	for attr in method.attrs {
		// 		if attr.contains('edited_channel_post') {
		// 			update_new.message = update_new.edited_channel_post
		// 			app.$method(result)
		// 		}
		// 	}
		// }
		// // inline_query process
		// else if update_new.inline_query.id != '' {
		// 	for attr in method.attrs {
		// 		if attr.contains('inline_query') {
		// 			app.$method(result)
		// 		}
		// 	}
		// }
		// // chosen_inline_result process
		// else if update_new.chosen_inline_result.result_id != '' {
		// 	for attr in method.attrs {
		// 		if attr.contains('chosen_inline_result') {
		// 			app.$method(result)
		// 		}
		// 	}
		// }
		// // shipping_query process
		// else if update_new.shipping_query.id != '' {
		// 	for attr in method.attrs {
		// 		if attr.contains('shipping_query') {
		// 			app.$method(result)
		// 		}
		// 	}
		// }
		// // pre_checkout_query process
		// else if update_new.pre_checkout_query.id != '' {
		// 	for attr in method.attrs {
		// 		if attr.contains('pre_checkout_query') {
		// 			app.$method(result)
		// 		}
		// 	}
		// }
		// // poll process
		// else if update_new.poll.id != '' {
		// 	for attr in method.attrs {
		// 		if attr.contains('poll') {
		// 			app.$method(result)
		// 		}
		// 	}
		// }
		// // poll_answer process
		// else if update_new.poll_answer.poll_id != '' {
		// 	for attr in method.attrs {
		// 		if attr.contains('poll_answer') {
		// 			app.$method(result)
		// 		}
		// 	}
		// }
		// // my_chat_member process
		// else if update_new.my_chat_member.chat.id != 0 {
		// 	for attr in method.attrs {
		// 		if attr.contains('my_chat_member') {
		// 			app.$method(result)
		// 		}
		// 	}
		// }
		// // chat_member process
		// else if update_new.chat_member.chat.id != 0 {
		// 	for attr in method.attrs {
		// 		if attr.contains('chat_member') {
		// 			app.$method(result)
		// 		}
		// 	}
		// }
		// // chat_join_request process
		// else if update_new.chat_join_request.chat.id != 0 {
		// 	for attr in method.attrs {
		// 		if attr.contains('chat_join_request') {
		// 			app.$method(result)
		// 		}
		// 	}
		// }
	}
}
