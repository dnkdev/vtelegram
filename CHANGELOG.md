### v 1.5.0

- `start_polling` instead of `poll`
- `ChatMember` - Structs of all member roles combined, so that the V's json package can decode the updates it receives for `my_chat_member` and `chat_member`. can be handled by 'status' field
- To handle messages, you need to specify the attribute 'message'
- All updates handling through attributes
  Available attributes:

```v
message
edited_message
channel_post
edited_channel_post
inline_query
chosen_inline_result
callback_query
shipping_query
pre_checkout_query
poll
poll_answer
my_chat_member
chat_member
chat_join_request
```

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
fn (mut app App) handle_callbackquery(result Result){
    //...
}
[starts_with: '/']
fn (mut app App) handle_message(result Result) {

}
// to use few parameters or callback_query with starts_with do so:
['callback_query: starts_with: key'] // all attribute must be like string
fn (mut app App) handle_callbackquery(result Result){
    //...
}
// and also
['callback_query: key']         // Must be string too if attribute not single
['callback_query: something']   //
fn (mut app App) handle_callbackquery(result Result){
    //...
}
```

### v 1.3.0

- Major version is 1, because module is ready to use and has the all latest telegram bot API models and methods, you can do it just manually. Custom features in development.

### v 0.1.1

- Added `starts_with` filter to `callback` handling mechanism
- Added `starts_with` filter to message handling mechanism, and text in result is also without that is specified in attribute. Can be > 1 options

### v 0.1.0

- Handling messages with attributes
- Handling callback_query with attribute
