module main

import vtelegram

struct App {
	vtelegram.Bot
}

// handle all messagess
[message]
fn (mut app App) all_messages(result vtelegram.Result) ! {
	app.sendmessage(chat_id: result.update.message.chat.id, text: '${result.message.text}')!
}

fn main() {
	mut app := App{
		token: '5401623750:AAFWXZWx8V-SZIDQUI62AT7agCMs55aLIdU'
	}
	polling_config := vtelegram.PollingConfig[vtelegram.Regular]{}
	vtelegram.start_polling(mut app,polling_config) // starting the bot
}
