module main

import vtelegram as vt

struct App {
	vt.Bot
}

fn main(){
	mut app := App{
		token: '5401623750:AAFWXZWx8V-SZIDQUI62AT7agCMs55aLIdU'
	}
	println('Starting bot...')
	for {
		updates := app.get_updates(offset: app.offset) or {
			println(err)
			[]vt.Update{}
		}
		for u in updates{
			if u.message.text == '/start'{
				app.send_chat_action(
					chat_id: u.message.from.id,
					action: "typing"
				)!
				app.send_message(
					chat_id: u.message.from.id,
					text: 'Hello, $u.message.from.first_name\nHow is your day?'
					reply_markup: get_buttons()
				)!
			}
			if u.callback_query.data == 'good' {
				app.send_message(
					chat_id: u.callback_query.from.id,
					text: 'Happy to hear that!'
				)!
			}
			else if u.callback_query.data == 'bad' {
				app.send_message(
					chat_id: u.callback_query.from.id,
					text: 'Don\'t worry be happy!'
				)!
			}
			app.offset = u.update_id + 1
		}
	}
}

fn get_buttons() vt.InlineKeyboardMarkup {
	return vt.new_reply_markup(
		vt.new_inline_button(text:"Good", callback_data: "good"),
		vt.new_inline_button(text:"Bad", callback_data: "bad")
	)
}