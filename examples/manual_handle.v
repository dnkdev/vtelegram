module main

import vtelegram {Bot, Update, Message, InlineKeyboardButton, InlineKeyboardMarkup}

struct App {
	Bot
}

fn main(){
	mut app := App{
		token: '5401623750:AAFWXZWx8V-SZIDQUI62AT7agCMs55aLIdU'
	}
	println('Starting bot...')
	for {
		updates := app.getupdates(offset: app.offset) or {
			println(err)
			[]Update{}
		}
		for u in updates{
			if u.message.text == '/start'{
				app.sendchataction(
					chat_id: u.message.from.id,
					action: "typing"
				)!
				app.sendmessage(
					chat_id: u.message.from.id,
					text: 'Hello, $u.message.from.first_name\nHow is your day?'
					reply_markup: InlineKeyboardMarkup{get_buttons()}
				)!
			}
			if u.callback_query.data == 'good' {
				app.sendmessage(
					chat_id: u.callback_query.from.id,
					text: 'Happy to hear that!'
				)!
			}
			else if u.callback_query.data == 'bad' {
				app.sendmessage(
					chat_id: u.callback_query.from.id,
					text: 'Don\'t worry be happy!'
				)!
			}
			app.offset = u.update_id + 1
		}
	}
}

fn get_buttons() [][]InlineKeyboardButton {
	mut buttons := [][]InlineKeyboardButton{}
	buttons << 	[InlineKeyboardButton{text:"Good", callback_data: "good"}]
	buttons <<	[InlineKeyboardButton{text:"Bad", callback_data: "bad"}]
	return buttons
}