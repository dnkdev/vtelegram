import vtelegram

// define main middleware struct
struct MyBaseMiddleware {
}

// define your app struct, Bot module struct must be nested
struct App {
	vtelegram.Bot
}

// message middleware
[message]
fn (mut mw MyBaseMiddleware) my_message_middleware(mut update vtelegram.Update) bool {
	println('1. Middleware first.')
	return true // true means the middleware approves passing the update to handlers
}

[message]
fn (mut app App) all_messages(result vtelegram.Result) ! {
	println('2. Handler after middleware')
	app.send_message(chat_id: result.update.message.chat.id, text: '${result.update.message.text}')!
}

fn main() {
	mut app := App{
		token: '5401623750:AAFWXZWx8V-SZIDQUI62AT7agCMs55aLIdU'
	}
	polling_config := vtelegram.PollingConfig[MyBaseMiddleware]{
		delay_time: 2000
	}
	// starting your bot app with middleware in polling config
	vtelegram.start_polling(mut app, polling_config)
}
