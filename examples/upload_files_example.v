module main

import vtelegram as vt
import vtelegram.src.media as vtm

struct App {
	vt.Bot
}

[message: '/send']
fn (mut app App) send(result vt.Result) ! {
	
	println('sending...')

	// Document upload
	doc := vtm.new_document('./VTelegram.svg')
	doc.send(
		mut app,
		chat_id: result.update.message.chat.id
	 	caption:'here is the document'
	) or {
		println('Failed: ${err}')
	}

	// Photo upload
	photo := vtm.new_photo('./VTelegram.png')
	photo.send(
		mut app,
		chat_id: result.update.message.chat.id
	 	caption:'here is a photo'
	) or {
		println('Failed: ${err}')
	}

	// Video upload
	video := vtm.new_video('/home/dan/Videos/ny.mp4')
	video.send(mut app, chat_id: result.update.message.chat.id, caption: 'This is a video example') or {
		println('Failed: ${err}')
	}
	
}

fn main() {
	mut app := App{
		token: '5401623750:AAFWXZWx8V-SZIDQUI62AT7agCMs55aLIdU'
	}
	polling_config := vt.PollingConfig[vt.Regular]{}
	vt.start_polling(mut app,polling_config) // starting the bot
}
