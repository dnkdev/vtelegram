### v 1.4.0

- `mut` to all bot methods
- Deleted `time_event`
- `log` instance to Bot struct, which includes bot debugging
- `dry_start` parameter to bot.poll() method ( on bot start will process only the last update when bot was off )

### v 1.3.1

- `callback_query` attribute instead of just `callback`
- To assign value to attribute now used `:` instead of `;`

```v
[callback_query: 'key']
fn (app App) handle_callbackquery(result Result){
    //...
}
[starts_with: '/']
fn (app App) handle_message(result Result) {

}
// to use few parameters or callback_query with starts_with do so:
['callback_query: starts_with: key'] // all attribute must be like string
fn (app App) handle_callbackquery(result Result){
    //...
}
// and also
['callback_query: key']         // Must be string too if attribute not single
['callback_query: something']   //
fn (app App) handle_callbackquery(result Result){
    //...
}
```

### v 1.3.0

- Major version is 1, because module is ready to use and has the all latest telegram bot API models and methods, you can do it just manually. Custom features in development.

### v 0.1.1

- Added `starts_with` filter to `callback` handling mechanism
- Added `starts_with` filter to message handling mechanism, and text in result is also without that is specified in attribute. Can be > 1 options

```v
[callback; starts_with; 'key'] // if callback_data == "keysomething" then result.query.data will be only "something" without "key"
fn (app App) handle_callbackquery(result Result){
    //...
}
[starts_with; '/'; '#'; '$'; 'key'] //
fn (app App) handle_message(result Result){
    //... if you enter /start command, then result.message.text == 'start' (without '/')
}
```

### v 0.1.0

- Handling messages with attributes
- Handling callback_query with attribute

```v
['/start'] // Must be Bot struct method or nested (in this case App is struct App{Bot})
fn (app App) handle_callbackquery(result Result){
    //...
}
[callback; 'key'] // handle InlineKeyboardButton press with callback_data == "key" // Must be Bot struct method or nested
fn (app App) handle_start(result Result){
    //...
}
```

handled functions with attributes must accept Result as parameter
