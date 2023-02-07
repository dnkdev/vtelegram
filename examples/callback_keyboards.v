module main

import vtelegram {Bot, poll, Result, Message, InlineKeyboardButton, InlineKeyboardMarkup,CallbackQuery}

struct App {
	Bot
}
[callback_query] // Handle all callbacks
fn (app App) all_callbacks(	result Result )!{
	app.sendmessage(chat_id: result.query.from.id, text: 'You pressed: $result.query.data')!
}

[callback_query: 'totally']
fn (app App) keyboard_callback(	result Result )!{ 
	app.sendmessage(chat_id: result.query.from.id, text: 'Wow, you are great.')!
}

['/start']
fn (app App) start(result Result)!{
	mut buttons := [][]InlineKeyboardButton{}
	buttons << [
		InlineKeyboardButton{text:"Yes", callback_data: "yes"}, 
		InlineKeyboardButton{text:"No", callback_data: "no"}
	]
	buttons << [
		InlineKeyboardButton{text:"Totally", callback_data: "totally"}
	]
	reply_markup := InlineKeyboardMarkup{
		buttons
	}
	app.sendmessage(chat_id: result.message.chat.id, text: 'Are you here?', reply_markup: reply_markup)!
}

fn main(){
	app := App{
		Bot{token: '5401623750:AAFWXZWx8V-SZIDQUI62AT7agCMs55aLIdU'}
	}
	poll(app)!
}
