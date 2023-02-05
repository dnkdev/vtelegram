### v 0.1.1
- Add `starts_with` filter to `callback` handling mechanism
```v
[callback; starts_with; 'key'] // if callback_data == "keysomething" then result.query.data will be only "something" without "key"
fn (app App) handle_callbackquery(result Result){
    //...
}
```
### v 0.1.0
- Handling messages with attributes 
```v
['/start'] // Must be Bot struct method or nested (in this case App is struct App{Bot})
fn (app App) handle_callbackquery(result Result){
    //...
}
```
- Handling callback_query with attribute
```v
[callback; 'key'] // handle InlineKeyboardButton press with callback_data == "key" // Must be Bot struct method or nested 
fn (app App) handle_start(result Result){
    //...
}
```
handled functions with attributes must accept Result as parameter