module main

import vtelegram as vt
import rand
import time

struct App {
	vt.Bot
}

// handle all messagess
[message]
fn (mut app App) all_messages(result vt.Result) ! {
	message := result.update.message.reply(mut app, text: '${result.update.message.text}')!
	time.sleep(1000 * time.millisecond)
	message.edit(mut app, text: 'new text ${rand.int()}')!
}

fn main() {
	mut app := App{
		token: '5401623750:AAFWXZWx8V-SZIDQUI62AT7agCMs55aLIdU'
	}
	polling_config := vt.PollingConfig[vt.Regular]{}
	vt.start_polling(mut app,polling_config) // starting the bot
}
