module main

import vtelegram as vt

struct App {
	vt.Bot
}

[message: '/send']
fn (mut app App) send(result vt.Result) ! {
	println('sending...')

	mut mg := vt.new_media_group[vt.InputMediaDocument]()
	mg.add(media: 'https://raw.githubusercontent.com/tpn/pdfs/master/C%20Cheat%20Sheet%20(ashlyn-black_c-reference).pdf')
	mg.add(media: 'https://raw.githubusercontent.com/tpn/pdfs/master/Compiler%20Design%20In%20C.pdf')
	mg.add(media: 'https://raw.githubusercontent.com/tpn/pdfs/master/ChatGPT%20Cheat%20Sheet.pdf')
	app.send_media_group(
		chat_id: result.update.message.chat.id
		media: mg
	)!

	mut media_group := vt.new_media_group[vt.InputMediaDocument]()
	doc1 := vt.InputFile.new('./VTelegram.svg')!

	media_group.add(
		media: 'https://raw.githubusercontent.com/tpn/pdfs/master/A%20Compilation%20Target%20for%20Probabilistic%20Programming%20Languages%20-%202014%20(paige14).pdf'
	)
	media_group.add(
		media: doc1
	)
	app.send_media_group(
		chat_id: result.update.message.chat.id
		media: media_group
	)!

	mut mg_photo := vt.new_media_group[vt.InputMediaPhoto]()
	jpg := vt.InputFile.new('./examples/1.jpg')!
	mg_photo.add(media: jpg)
	app.send_media_group(
		chat_id: result.update.message.chat.id
		media: mg_photo
	)!
}

fn main() {
	mut app := App{
		token: '5401623750:AAFWXZWx8V-SZIDQUI62AT7agCMs55aLIdU'
	}
	polling_config := vt.PollingConfig[vt.Regular]{}
	vt.start_polling(mut app, polling_config) // starting the bot
}
