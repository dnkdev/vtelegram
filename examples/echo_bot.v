module main

import vtelegram

struct App {
	vtelegram.Bot
}

[''] // handle all messagess
fn (app App) all_messages(message vtelegram.Message)!{
	app.sendmessage(chat_id: message.chat.id, text: '$message.text')!
}

fn main(){
	app := App{
		vtelegram.Bot{token: '5401623750:AAFWXZWx8V-SZIDQUI62AT7agCMs55aLIdU'}
	}
	vtelegram.poll(app)! //starting the bot
}
