module main

import vtelegram

struct App {
	vtelegram.Bot
}

[''] // handle all messagess
fn (mut app App) all_messages(result vtelegram.Result)!{
	app.sendmessage(chat_id: result.message.chat.id, text: '$result.message.text')!
}

fn main(){
	app := App{
		vtelegram.Bot{token: '5401623750:AAFWXZWx8V-SZIDQUI62AT7agCMs55aLIdU'}
	}
	vtelegram.poll(app)! //starting the bot
}
