module main

import vtelegram as vt
import vtelegram.src.media as vtm

struct App {
	vt.Bot
}

[message: '/send']
fn (mut app App) send(result vt.Result) ! {
	
	println('sending...')

	mut doc := vtm.new_document()
	doc.upload('./VTelegram.svg')!
	doc.send(
		mut app,
		chat_id: result.update.message.chat.id
	 	caption:'here is document'
	) or {
		println('Failed: ${err}')
		app.log.error('Failed: ${err}')
		return 
	}

	mut photo := vtm.new_photo()
	photo.upload('./path_to.png')!
	photo.send(
		mut app,
		chat_id: result.update.message.chat.id
	 	caption:'here is photo'
	) or {
		println('Failed: ${err}')
		app.log.error('Failed: ${err}')
		return 
	}
}

fn main() {
	mut app := App{
		token: '5401623750:AAFWXZWx8V-SZIDQUI62AT7agCMs55aLIdU'
	}
	app.log.set_level(.debug)
	app.log.set_full_logpath('./bot.log')
	polling_config := vt.PollingConfig[vt.Regular]{}
	vt.start_polling(mut app,polling_config) // starting the bot
}
