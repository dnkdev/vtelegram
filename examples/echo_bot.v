module main

import vtelegram

struct App {
	vtelegram.Bot
}

// handle all messagess
[message]
fn (mut app App) all_messages(result vtelegram.Update) ! {
	app.sendmessage(chat_id: result.message.chat.id, text: '${result.message.text}')!
}

fn main() {
	mut app := App{
		token: '5401623750:AAFWXZWx8V-SZIDQUI62AT7agCMs55aLIdU'
	}
	vtelegram.start_polling(mut app) // starting the bot
}
