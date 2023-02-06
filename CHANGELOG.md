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