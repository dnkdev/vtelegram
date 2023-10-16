module main

import vtelegram as vt
import vtelegram.src.media as vtm

struct App {
	vt.Bot
}

[message: '/send']
fn (mut app App) send(result vt.Result) ! {
	
	println('sending...')

	// media group must contain min 2 items and can't be mixed with other media types
	mut group := vtm.new_media_group()
	group.add_document('./VTelegram.svg', caption: 'this is a svg' )
	group.add_document('./document.txt', caption: 'this is a txt')
	group.send(mut app, chat_id: result.update.message.chat.id) or {
		println('Error on sending ${err}')
	}
}

fn main() {
	mut app := App{
		token: '5401623750:AAFWXZWx8V-SZIDQUI62AT7agCMs55aLIdU'
	}
	polling_config := vt.PollingConfig[vt.Regular]{}
	vt.start_polling(mut app,polling_config) // starting the bot
}
