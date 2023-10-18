module main

import vtelegram as vt

struct App {
	vt.Bot
}

[message: '/send']
fn (mut app App) send(result vt.Result) ! {
	println('sending...')

	// if you upload files, then use `upload` method,
	// if you add http url or file_id, then use `add` method

	mut media_group_http := vt.new_media_group[vt.InputMediaDocument]()
	media_group_http.add(vt.InputMediaDocument.new(
		media: 'https://raw.githubusercontent.com/tpn/pdfs/master/C%20Cheat%20Sheet%20(ashlyn-black_c-reference).pdf'
	))
	media_group_http.add(vt.InputMediaDocument.new(
		media: 'https://raw.githubusercontent.com/tpn/pdfs/master/Compiler%20Design%20In%20C.pdf'
	))
	media_group_http.add(vt.InputMediaDocument.new(
		media: 'https://raw.githubusercontent.com/tpn/pdfs/master/ChatGPT%20Cheat%20Sheet.pdf'
	))

	app.send_media_group[vt.InputMediaDocument](media_group_http,
		chat_id: result.update.message.chat.id
	)!

	mut media_group := vt.new_media_group[vt.InputMediaDocument]()
	thumbnail := vt.InputFile.new('./examples/1.jpg')!
	media_group.upload(vt.InputMediaDocument.new(media: './VTelegram.svg', caption: 'logo'))!
	media_group.upload(vt.InputMediaDocument.new(
		media: './examples/1.pdf'
		thumbnail: thumbnail
		caption: 'pdf'
	))!

	app.send_media_group[vt.InputMediaDocument](media_group,
		chat_id: result.update.message.chat.id
	)!

	// media_group.add(
	// 	vt.InputMediaDocument.new(media: 'https://raw.githubusercontent.com/vvo/gifify/master/22.gif')!
	// )
}

fn main() {
	mut app := App{
		token: '5401623750:AAFWXZWx8V-SZIDQUI62AT7agCMs55aLIdU'
	}
	polling_config := vt.PollingConfig[vt.Regular]{}
	vt.start_polling(mut app, polling_config) // starting the bot
}
