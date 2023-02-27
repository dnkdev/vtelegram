module main

import vtelegram { Bot, InlineKeyboardButton, InlineKeyboardMarkup, Result, start_polling, PollingConfig, Regular }

struct App {
	Bot
}

// Handle all callbacks
[callback_query]
fn (mut app App) all_callbacks(result Result) ! {
	app.send_message(
		chat_id: result.update.callback_query.from.id
		text: 'You pressed: ${result.update.callback_query.data}'
	)!
}

[callback_query: 'totally']
fn (mut app App) keyboard_callback(result Result) ! {
	app.send_message(chat_id: result.update.callback_query.from.id, text: 'Wow, you are great.')!
}

[message: '/start']
fn (mut app App) start(result Result) ! {
	mut buttons := [][]InlineKeyboardButton{}
	buttons << [
		InlineKeyboardButton{
			text: 'Yes'
			callback_data: 'yes'
		},
		InlineKeyboardButton{
			text: 'No'
			callback_data: 'no'
		},
	]
	buttons << [
		InlineKeyboardButton{
			text: 'Totally'
			callback_data: 'totally'
		},
	]
	reply_markup := InlineKeyboardMarkup{buttons}
	app.send_message(
		chat_id: result.update.message.chat.id
		text: 'Are you here?'
		reply_markup: reply_markup
	)!
}

fn main() {
	mut app := App{
		token: '5401623750:AAFWXZWx8V-SZIDQUI62AT7agCMs55aLIdU'
	}
	polling_config := PollingConfig[Regular]{}
	start_polling(mut app,polling_config)
}
