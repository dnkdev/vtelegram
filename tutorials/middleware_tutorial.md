## Middleware Tutorial

> Referring to vtelegram 1.6 version

Update handling flow can be defined as follows:

```
Getting update -> Filters -> Middleware -> Filters -> Your Handling Function
```

_Middleware is your defined functions, which will process before your handling functions._

For now middlewares can:

- Prevent update for passing to handlers ( middleware methods must return bool, `false` for prevent update )
- Transform update
- Pass data in `map[string]string` type to handlers

To initialize middleware, you need to create one global `struct` and add methods to it. That will be all your middlewares, as much as you want. To get module to know what `struct` is your middleware, you need pass your struct name to `vtelegram.start_polling`

```v
import vtelegram

// define main middleware struct
struct MyBaseMiddleware{}

// define your app struct, Bot module struct must be nested
struct App{
    vtelegram.Bot
}

// message middleware
[message]
fn (mut mw MyBaseMiddleware) my_message_middleware(mut update vtelegram.Update) bool {
    // do something
    return true // true means the middleware approves passing the update to handlers
}

// channel post middleware
[channel_post]
fn (mut mw MyBaseMiddleware) my_channel_middleware(mut update vtelegram.Update) bool {
    update.channel_post.text += '\nProcessed with middleware.' // add text to update, which will be passed to handlers
    return true
}

fn main(){
    // initialize your bot app, token adding
    mut app := App{
        token: 'YOUR_BOT_TOKEN'
    }

    // The main point to make your middleware work is to cast it to a generic type struct PollingConfig
    polling_config := vtelegram.PollingConfig[MyBaseMiddleware]{
        allowed_updates:['message', 'channel_post'] // parameter from getUpdate telegram method
        delay_time: 2000 // pause between getting updates (default 1000) in milliseconds
    }

    // starting your bot app with middleware in polling config
    vtelegram.start_polling(mut app, polling_config)
}
```

To define to which type of handlers middleware apply, set attribute on top of your middleware method.<br>

Middleware can be extended with [context filters](https://github.com/dnkdev/vtelegram/blob/master/tutorials/context_filters.md), which will expand the context of handled updates.<br>
To pass data to handlers from your middleware, you need set `data` field to your middleware struct, which have `map[string]string` type.

> **Note** That you need to clear the data from middleware manually, otherwise data will be saved

```v
import vtelegram

// define main middleware struct
struct MyBaseMiddleware {
mut:
	data map[string]string
}

// define your app struct, Bot module struct must be nested
struct App {
	vtelegram.Bot
mut:
// setting middleware instance to app for data manipulations
	middleware MyBaseMiddleware
}

// message middleware
[message]
fn (mut mw MyBaseMiddleware) my_message_middleware(mut update vtelegram.Update) bool {
	// do something
	// add some data, for example from db
	mw.data['data_from_db'] = 'some_data'
	return true // true means the middleware approves passing the update to handlers
}

// message handler
[message]
fn (mut app App) your_app_handler(result vtelegram.Result) ! {
	// do something
	// passed data is present
	data_from_db := result.data['data_from_db']
	println('Data from middleware is: ${'data_from_db'}')
}

fn main() {
	// initialize your bot app
	mut app := App{
		token: 'YOUR_BOT_TOKEN'
	}
	// set logging
	app.log.set_level(.debug)
	app.log.set_full_logpath('./bot.log')
	polling_config := vtelegram.PollingConfig[MyBaseMiddleware]{}

	// starting your bot app with middleware in polling config
	vtelegram.start_polling(mut app, polling_config)
}

```

More use cases you can find in [examples](https://github.com/dnkdev/vtelegram/tree/master/examples) directory.
