module vtelegram

const (
	handler_types = [
		'message',
		'edited_message',
		'channel_post',
		'edited_channel_post',
		'inline_query',
		'chosen_inline_result',
		'callback_query',
		'shipping_query',
		'pre_checkout_query',
		'poll',
		'poll_answer',
		'my_chat_member',
		'chat_member',
		'chat_join_request',
	]
)
fn is_handler_pass_filters(update Update, attrs []string) bool {
	mut subs := map[string][]string
	for attr in attrs {
		a := attr.split(':') // [message: starts_with: value]
		if a.len < 2 {
			//passing = false
			subs[attr] = ['']
			continue
		}
		sub := a[0].trim_space()
		mut value := a.last().trim_space()
		if a.len == 3{
			value = attr.all_after_first(':')
		}
		subs[sub] << value
		if sub == 'context' {
			if !validate_filter(update, value) {
				return false
			}
		}
	}
	if process_handler(update, subs){
		return true
	}
	return false
}
fn is_handler_relate_to_type(update Update, attrs []string) bool {
	for handler in handler_types {
		if attrs.any(it.contains(handler)){
			if validate_handler_type(update, handler){
				return true
			}
		}
	}
	return false
}

fn process_handler(update Update, subs map[string][]string) bool {
	for key, values in subs {
		for value_ in values {
			value := value_.trim_space()
			if key == '' {
				return false
			}
			if value == '' {
				return true
			}
			match key {
				'message' {
					if value.contains('starts_with') {
						val := value.split(':').last().trim_space()
						if update.message.text.starts_with(val) || update.message.caption.starts_with(val){
							return true
						}
					} else if value.contains('contains') {
						val := value.split(':').last().trim_space()
						if update.message.text.contains(val) || update.message.caption.contains(val) {
							return true
						}
					} else if value.contains('ends_with') {
						val := value.split(':').last().trim_space()
						if update.message.text.ends_with(val) || update.message.caption.ends_with(val) {
							return true
						}
					} else if update.message.text == value || update.message.caption == value {
						return true
					}
				}
				'callback_query' {
					if value.contains('starts_with') {
						val := value.split(':').last().trim_space()
						if update.callback_query.data.starts_with(val) {
							return true
						}
					} else if value.contains('contains') {
						val := value.split(':').last().trim_space()
						if update.callback_query.data.contains(val) {
							return true
						}
					} else if value.contains('ends_with') {
						val := value.split(':').last().trim_space()
						if update.callback_query.data.ends_with(val) {
							return true
						}
					} else if update.callback_query.data == value {
						return true
					}
				}
				'edited_message' {
					if value.contains('starts_with') {
						val := value.split(':').last().trim_space()
						if update.edited_message.text.starts_with(val) || update.edited_message.caption.starts_with(val){
							return true
						}
					} else if value.contains('contains') {
						val := value.split(':').last().trim_space()
						if update.edited_message.text.contains(val) || update.edited_message.caption.contains(val) {
							return true
						}
					} else if value.contains('ends_with') {
						val := value.split(':').last().trim_space()
						if update.edited_message.text.ends_with(val) || update.edited_message.caption.ends_with(val) {
							return true
						}
					} else if update.edited_message.text == value || update.edited_message.caption == value {
						return true
					}
				}
				'channel_post' {
					if value.contains('starts_with') {
						val := value.split(':').last().trim_space()
						if update.channel_post.text.starts_with(val) || update.channel_post.caption.starts_with(val){
							return true
						}
					} else if value.contains('contains') {
						val := value.split(':').last().trim_space()
						if update.channel_post.text.contains(val) || update.channel_post.caption.contains(val) {
							return true
						}
					} else if value.contains('ends_with') {
						val := value.split(':').last().trim_space()
						if update.channel_post.text.ends_with(val) || update.channel_post.caption.ends_with(val) {
							return true
						}
					} else if update.channel_post.text == value || update.channel_post.caption == value {
						return true
					}
				}
				'edited_channel_post' {
					if value.contains('starts_with') {
						val := value.split(':').last().trim_space()
						if update.edited_channel_post.text.starts_with(val) || update.edited_channel_post.caption.starts_with(val){
							return true
						}
					} else if value.contains('contains') {
						val := value.split(':').last().trim_space()
						if update.edited_channel_post.text.contains(val) || update.edited_channel_post.caption.contains(val) {
							return true
						}
					} else if value.contains('ends_with') {
						val := value.split(':').last().trim_space()
						if update.edited_channel_post.text.ends_with(val) || update.edited_channel_post.caption.ends_with(val) {
							return true
						}
					} else if update.edited_channel_post.text == value || update.edited_channel_post.caption == value {
						return true
					}
				}
				'inline_query' {
					return true
				}
				'chosen_inline_result' {
					return true
				}
				'shipping_query' {
					return true
				}
				'pre_checkout_query' {
					return true
				}
				'poll' {
					return true
				}
				'poll_answer' {
					return true
				}
				'my_chat_member' {
					return true
				}
				'chat_member' {
					return true
				}
				'chat_join_request' {
					return true
				}
				else {}
			}
		}
	}
	return false
}

fn validate_handler_type(update Update, key string) bool {
	match key {
		'message' {
			if update.message.message_id != 0{
				return true
			}
		}
		'callback_query' {
			if update.callback_query.data != '' {
				return true
			}
		}
		'edited_message' {
			if update.edited_message.message_id != 0 {
				return true
			}
		}
		'channel_post' {
			if update.channel_post.message_id != 0 {
				return true
			}
		}
		'edited_channel_post' {
			if update.edited_channel_post.message_id != 0 {
				return true
			}
		}
		'inline_query' {
			if update.inline_query.id != '' {
				return true
			}
		}
		'chosen_inline_result' {
			if update.chosen_inline_result.result_id != '' {
				return true
			}
		}
		'shipping_query' {
			if update.shipping_query.id != '' {
				return true
			}
		}
		'pre_checkout_query' {
			if update.pre_checkout_query.id != '' {
				return true
			}
		}
		'poll' {
			if update.poll.id != '' {
				return true
			}
		}
		'poll_answer' {
			if update.poll_answer.poll_id != '' {
				return true
			}
		}
		'my_chat_member' {
			if update.my_chat_member.chat.id != 0 {
				return true
			}
		}
		'chat_member' {
			if update.chat_member.chat.id != 0 {
				return true
			}
		}
		'chat_join_request' {
			if update.chat_join_request.chat.id != 0 {
				return true
			}
		}
		else {}
	}
	return false
}
