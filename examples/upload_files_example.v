module main

import vtelegram as vt

struct App {
	vt.Bot
}

[message: '/send']
fn (mut app App) send(result vt.Result) ! {
	println('sending...')

	doc := vt.InputFile.new('./VTelegram.svg')!
	app.send_document(
		chat_id: result.update.message.chat.id
		caption: 'here is the document'
		document: doc
	)!

	app.send_document(
		chat_id: result.update.message.chat.id
		caption: 'here is the gif via url'
		document: 'https://raw.githubusercontent.com/vvo/gifify/master/22.gif'
	)!

	photo := vt.InputFile.new('./examples/assets/1.jpg')!
	app.send_photo(
		chat_id: result.update.message.chat.id
		caption: 'here is the photo'
		photo: photo
	)!

	audio := vt.InputFile.new('./examples/assets/1.mp3')!
	thumb := vt.InputFile.new('./examples/assets/1.jpg')!
	app.send_audio(
		chat_id: result.update.message.chat.id
		caption: 'here is the audio'
		audio: audio
		thumbnail: thumb
	)!

	// video := vt.InputFile.new('/home/dan/Videos/ny.mp4')!
	// thumb := vt.InputFile.new('./examples/assets/1.jpg')!
	// app.send_video(
	// 	chat_id: result.update.message.chat.id
	// 	caption:'here is the video'
	// 	photo: video
	// 	thumbnail:thumb
	// )!
}

fn main() {
	mut app := App{
		token: '5401623750:AAFWXZWx8V-SZIDQUI62AT7agCMs55aLIdU'
	}
	polling_config := vt.PollingConfig[vt.Regular]{}
	vt.start_polling(mut app, polling_config) // starting the bot
}
