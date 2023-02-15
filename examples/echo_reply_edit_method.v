module main

import vtelegram as vt
import rand
import time

struct App {
	vt.Bot
}

[message] // handle all messagess
fn (mut app App) all_messages(result vt.Update)!{
	message := result.message.reply(app, text: '$result.message.text' )!
	time.sleep(1000*time.millisecond)
	message.edit(app, text: 'new text ${rand.int()}')!
}


fn main(){
	app := App{
		vt.Bot{
			token: '5401623750:AAFWXZWx8V-SZIDQUI62AT7agCMs55aLIdU'
		}
	}
	vt.start_polling(app)! //starting the bot
}
