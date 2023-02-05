module vtelegram

// reply on message that are pointed on
// takes away the requirement to specify chat_id in params
pub fn (message Message) reply[T](bot T,params SendMessage) !Message{
	mut newparams := params
	newparams.chat_id = message.chat.id
	newparams.reply_to_message_id = message.message_id
	r_message := bot.sendmessage(newparams)!
	return r_message
}

// edit Clone of editMessageText method with diffrence that it take message_id of attached Message
// ONLY IF NOT specified message_id or inline_message_id in params
// and takes away the requirement to specify a chat_id (also takes it from attached Message)
pub fn (message Message) edit[T](bot T, params EditMessageText)!{
	mut newparams := params
	newparams.chat_id = message.chat.id
	if params.message_id == 0 && params.inline_message_id == '' {
		newparams.message_id = message.message_id
	}
	bot.editmessagetext(newparams)!
}