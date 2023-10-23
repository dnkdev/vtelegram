module main

import vtelegram as vt
import os

struct App {
	vt.Bot
}

const vmodules_dir = os.vmodules_dir()

[message: '/send']
fn (mut app App) send(result vt.Result) ! {
	webp := vt.InputFile.new(vmodules_dir + '/vtelegram/examples/1.webp')!

	// sendSticker examples
	app.send_sticker(
		chat_id: result.update.message.chat.id
		sticker: webp
		emoji: '⛰' // optional
	)!
	app.send_sticker(
		chat_id: result.update.message.chat.id
		sticker: 'https://upload.wikimedia.org/wikipedia/commons/9/9b/Telegram_Logo.webp'
	)!

	// uploadStickerFile
	f := app.upload_sticker_file(
		user_id: result.update.message.chat.id
		sticker: webp
		sticker_format: 'static'
	)!
	println('Sticker is uploaded: ' + f.str())

	//
	sticker := vt.InputSticker.new(sticker: webp, emoji_list: ['⛰'])

	// createNewStickerSet
	bot_username := app.get_me()!.username
	sticker_set_name := 'cool_stickers_by_${bot_username}'
	app.create_new_sticker_set(
		user_id: result.update.message.chat.id
		name: sticker_set_name
		title: 'Cool Stickers'
		stickers: [sticker]
		sticker_format: 'static'
		sticker_type: 'regular'
	) or { eprintln(err) }
	println('your sticker set available via link `t.me/addstickers/${sticker_set_name}`')

	//
	webp2 := vt.InputFile.new(vmodules_dir + '/vtelegram/examples/2.webp')!
	sticker2 := vt.InputSticker.new(
		sticker: webp2
		emoji_list: ['❤️', '💟', '🤍']
		keywords: ['heart', 'luv']
	)

	// addStickerToSet
	app.add_sticker_to_set(
		user_id: result.update.message.chat.id
		name: sticker_set_name
		sticker: sticker2
	) or { eprintln(err) }

	// getStickerSet
	sticker_set_info := app.get_sticker_set(name: sticker_set_name)!
	app.send_message(
		chat_id: result.update.message.chat.id
		text: 'your new sticker set is here:\nt.me/addstickers/${sticker_set_name}\n
		Sticker Set info:\nname = ${sticker_set_info.name}\ntitle = ${sticker_set_info.title}'
		reply_markup: vt.new_reply_markup(vt.new_inline_button(
			text: 'Delete Sticker Set'
			callback_data: 'del_${sticker_set_name}'
		))
	)!
}

[callback_query: 'starts_with: del_']
fn (mut app App) delete_added_sticker_set(r vt.Result) ! {
	sticker_set_name := r.update.callback_query.data.all_after_first('del_')
	app.delete_sticker_set(name: sticker_set_name)!
	app.answer_callback_query(
		callback_query_id: r.update.callback_query.id
		show_alert: true
		text: 'your added sticker set has been deleted!'
	)!
}

fn main() {
	mut app := App{
		token: '5401623750:AAFWXZWx8V-SZIDQUI62AT7agCMs55aLIdU'
	}
	polling_config := vt.PollingConfig[vt.Regular]{}
	vt.start_polling(mut app, polling_config) // starting the bot
}
