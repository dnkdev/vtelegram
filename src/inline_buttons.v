module vtelegram

type InlineKeyboardButtonSum = InlineKeyboardButton | []InlineKeyboardButton

pub fn new_reply_markup(buttons_r ...InlineKeyboardButtonSum) InlineKeyboardMarkup {
	mut buttons := [][]InlineKeyboardButton{}
	for br in buttons_r {
	 	match br {
			InlineKeyboardButton {
				buttons << [[br]]
			}
			[]InlineKeyboardButton {
				buttons << [br]
			}
		}
	}
	return InlineKeyboardMarkup{buttons}
}

[inline]
pub fn new_inline_button(params InlineKeyboardButton) InlineKeyboardButton {
	return params
}
