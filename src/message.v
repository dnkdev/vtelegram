module vtelegram

// delete message
pub fn (message Message) delete[T](mut bot T) !bool {
	r_delete := bot.delete_message(chat_id: message.chat.id, message_id: message.message_id)!
	return r_delete
}

// reply on message that are pointed on
// takes away the requirement to specify chat_id in params
pub fn (message Message) reply[T](mut bot T, params SendMessage) !Message {
	mut newparams := params
	newparams.chat_id = message.chat.id
	newparams.reply_to_message_id = message.message_id
	r_message := bot.send_message(newparams)!
	return r_message
}

// edit Clone of editMessageText method with diffrence that it take message_id of attached Message
// ONLY IF NOT specified message_id or inline_message_id in params
// and takes away the requirement to specify a chat_id (also takes it from attached Message)
pub fn (message Message) edit[T](mut bot T, params EditMessageText) !Message {
	mut newparams := params
	newparams.chat_id = message.chat.id
	if params.message_id == 0 && params.inline_message_id == '' {
		newparams.message_id = message.message_id
	}
	r_message := bot.edit_message_text(newparams)!
	return r_message
}
