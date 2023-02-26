module vtelegram

pub fn get_middleware_data[T](middleware &T) map[string]string {
	$for field in T.fields{
		if field.name == 'data'{
			return middleware.data
		}
	}
	return map[string]string{}
}

pub fn free_middleware_data[T](middleware &T){
	$for field in T.fields{
		if field.name == 'stash_data'{
			if middleware.stash_data{
				return
			}
			for k, _ in middleware.data {
				unsafe {
					middleware.data.delete(k)
				}
			}
		}
	}
}

fn is_middleware_relate_to_type(mut update Update, attrs []string) bool {
	for handler in handler_types {
		//println('validate ${method.name} ${handler}')
		if attrs.any(it.contains(handler)){
			if validate_handler_type(update, handler){
				return true
			}
			else {
				//passing = false
				continue
			}
		}
	}
	return false
}

fn is_middleware_pass_filters(mut update Update, attrs []string) bool {
	for attr in attrs {
		a := attr.split(':')
		if a.len < 2 {
			continue
		}
		sub := a[0].trim_space()
		value := a.last().trim_space()
		
		// context filters
		if sub == 'context' {
			if !validate_filter(update, value) {
				return false
			}
		}
	}
	return true
}

fn aggregate_middlewares[T](mut middleware T, mut update Update) bool{
	$for method in T.methods {

		if method.attrs.len > 0 {

			if is_middleware_relate_to_type(mut update,method.attrs){
				if is_middleware_pass_filters(mut update, method.attrs){
					res := middleware.$method(mut update)
					if res.str() == 'false'{
						return false
					}
				}
			}

		}
	}
	return true
}
// pub enum MiddlewareType {
// 	message
// 	edited_message
// 	channel_post
// 	edited_channel_post
// 	inline_query
// 	chosen_inline_result
// 	callback_query
// 	shipping_query
// 	pre_checkout_query
// 	poll
// 	poll_answer
// 	my_chat_member
// 	chat_member
// 	chat_join_request
// }

// type MiddlewareFunc = fn (mut Update) bool
// struct MiddlewareBase {
// 	func fn (mut Update) bool
// 	//name 
// }

// pub struct Middleware {
// pub mut:
// 	message              []fn (mut Update) bool
// 	edited_message       []fn (mut Update) bool
// 	channel_post         []fn (mut Update) bool
// 	edited_channel_post  []fn (mut Update) bool
// 	inline_query         []fn (mut Update) bool
// 	chosen_inline_result []fn (mut Update) bool
// 	callback_query       []fn (mut Update) bool
// 	shipping_query       []fn (mut Update) bool
// 	pre_checkout_query   []fn (mut Update) bool
// 	poll                 []fn (mut Update) bool
// 	poll_answer          []fn (mut Update) bool
// 	my_chat_member       []fn (mut Update) bool
// 	chat_member          []fn (mut Update) bool
// 	chat_join_request    []fn (mut Update) bool
// }

// fn middleware_aggregate[T](app T, mut update Update) bool {
// 	println('Aggregate')
// 	mut res := true
// 	// message middleware process
// 	if update.message.message_id != 0 {
// 		for func in app.middleware.message {
// 			if res {
// 				res = func(mut update)
// 			}
// 		}
// 	}
// 	// callback_query middleware process
// 	else if update.callback_query.data != '' {
// 		for func in app.middleware.callback_query {
// 			if res {
// 				res = func(mut update)
// 			}
// 		}
// 	}
// 	// edited_message middleware process
// 	else if update.edited_message.message_id != 0 {
// 		for func in app.middleware.edited_message {
// 			if res {
// 				res = func(mut update)
// 			}
// 		}
// 	}
// 	// channel_post middleware process
// 	else if update.channel_post.message_id != 0 {
// 		for func in app.middleware.channel_post {
// 			if res {
// 				res = func(mut update)
// 			}
// 		}
// 	}
// 	// edited_channel_post middleware process
// 	else if update.edited_channel_post.message_id != 0 {
// 		for func in app.middleware.edited_channel_post {
// 			if res {
// 				res = func(mut update)
// 			}
// 		}
// 	}
// 	// inline_query middleware process
// 	else if update.inline_query.id != '' {
// 		for func in app.middleware.inline_query {
// 			if res {
// 				res = func(mut update)
// 			}
// 		}
// 	}
// 	// chosen_inline_result middleware process
// 	else if update.chosen_inline_result.result_id != '' {
// 		for func in app.middleware.chosen_inline_result {
// 			if res {
// 				res = func(mut update)
// 			}
// 		}
// 	}
// 	// shipping_query middleware process
// 	else if update.shipping_query.id != '' {
// 		for func in app.middleware.shipping_query {
// 			if res {
// 				res = func(mut update)
// 			}
// 		}
// 	}
// 	// pre_checkout_query middleware process
// 	else if update.pre_checkout_query.id != '' {
// 		for func in app.middleware.pre_checkout_query {
// 			if res {
// 				res = func(mut update)
// 			}
// 		}
// 	}
// 	// poll middleware process
// 	else if update.poll.id != '' {
// 		for func in app.middleware.poll {
// 			if res {
// 				res = func(mut update)
// 			}
// 		}
// 	}
// 	// poll_answer middleware process
// 	else if update.poll_answer.poll_id != '' {
// 		for func in app.middleware.poll_answer {
// 			if res {
// 				res = func(mut update)
// 			}
// 		}
// 	}
// 	// my_chat_member middleware process
// 	else if update.my_chat_member.chat.id != 0 {
// 		for func in app.middleware.my_chat_member {
// 			if res {
// 				res = func(mut update)
// 			}
// 		}
// 	}
// 	// chat_member middleware process
// 	else if update.chat_member.chat.id != 0 {
// 		for func in app.middleware.chat_member {
// 			if res {
// 				res = func(mut update)
// 			}
// 		}
// 	}
// 	// chat_join_request middleware process
// 	else if update.chat_join_request.chat.id != 0 {
// 		for func in app.middleware.chat_join_request {
// 			if res {
// 				res = func(mut update)
// 			}
// 		}
// 	}

// 	return res
// }

// pub fn (mut bot Bot) register_middleware(mf MiddlewareType, func MiddlewareFunc) {
// 	match mf {
// 		.message{
// 			bot.middleware.message << func
// 	 		return
// 		}
// 		.edited_message{
// 			bot.middleware.edited_message << func
// 	 		return
// 		}
// 		.channel_post{
// 			bot.middleware.channel_post << func
// 	 		return
// 		}
// 		.edited_channel_post{
// 			bot.middleware.edited_channel_post << func
// 	 		return
// 		}
// 		.inline_query{
// 			bot.middleware.inline_query << func
// 	 		return
// 		}
// 		.chosen_inline_result{
// 			bot.middleware.chosen_inline_result << func
// 	 		return
// 		}
// 		.callback_query{
// 			bot.middleware.callback_query << func
// 	 		return
// 		}
// 		.shipping_query{
// 			bot.middleware.shipping_query << func
// 	 		return
// 		}
// 		.pre_checkout_query{
// 			bot.middleware.pre_checkout_query << func
// 	 		return
// 		}
// 		.poll{
// 			bot.middleware.poll << func
// 	 		return
// 		}
// 		.poll_answer{
// 			bot.middleware.poll_answer << func
// 	 		return
// 		}
// 		.my_chat_member{
// 			bot.middleware.my_chat_member << func
// 	 		return
// 		}
// 		.chat_member{
// 			bot.middleware.chat_member << func
// 	 		return
// 		}
// 		.chat_join_request{
// 			bot.middleware.chat_join_request << func
// 	 		return
// 		}
// 	}
// }
