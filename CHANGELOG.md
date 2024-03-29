## v 0.11.1

- Middleware struct fields should match with bot struct fields! No option found for prevent the V compiler to limit field selection/checking in __compile time__. 

```v
struct App{
    vtelegram.Bot
    log LogStruct
}
struct Middleware{
    log LogStruct
}
```

- fix the creation of middleware and bot methods, which aren't a update handlers 
```v
fn (mut app App) print_hello(name string) {
    println('hello ${name}')
}
fn (mut mw Middleware) print_hello(name string) {
    println('hello ${name}')
}
```

### v 0.11

- Sticker manipulations/uploading...
- `context` attribute values separating with comma `,`:
```v
[context: 'audio, private']
[message]
fn (mut app App) audio_messages_in_private_chats(vtelegram.Result) ! {
    // handle all audio messages in private(bot) chat
}
```

### v 0.10

- Single file upload rework
- Media Group upload rework
- thumbnail upload

Examples in `examples` folder.

### v 0.9

- delete `log` field and entire vlib logging library from the vtelegram
- add a `vtelegram_debug` flag, to run the bot in debug mod, which will print the debug messages to console (`v -d vtelegram_debug run .`)

<hr>

<details>
  <summary>Archive</summary>

### v 0.8.2

- single database in your Bot and Middleware structs. must be only `db` field name for now to synchronize! 
    - single `log` field also, if you want log from Middleware functions (Bot has it by default, in Middleware struct you have to declare if you need it)
```v
pub struct App {
    vt.Bot
pub:
    db Database
}
struct MyBaseMiddleware{
pub mut:
    log log.Log
    db Database
}
```
- inline keyboard builder. 2 functions: `new_reply_markup` `new_inline_button`
```v
import vtelegram as vt

reply_markup := vt.new_reply_markup(
    // array for buttons in one row
    [
    vt.new_inline_button(text: 'Test', callback_data: '1'),
    vt.new_inline_button(text: 'Test2', callback_data: '2')
    ],
    // next row button
    vt.new_inline_button(text: 'Button3', callback_data: '3')
)
```

### v 0.8

- Media Group upload
    - In order for the Telegram Bot API to accept a request, one media group must contain >= 2 elements and contain only one media type.

### v 0.7

- Single file upload: `animation`, `audio`, `document`, `photo`, `video_note`, `video`, `voice`

### v 0.6.1

- `sender_group` `sender_channel` `sender_user` `sender_bot` context filters for define sender_chat type, apply to all updates which contain sender_chat field

### v 0.6.0

- `start_polling` must include PollingConfig as second argument. `PollingConfig` is generic type structure, for passing your middleware struct or marking it as `Regular` (for skip middleware). In the PollingConfig you can specify same parameters as for getUpdates and polling config (delay_time)

```v
polling_config := vtelegram.PollingConfig[vtelegram.Regular]{}
vtelegram.start_polling(mut app, polling_config)
```

- Middlewares and Context Filters. <br>

  - `pub fn delete_middleware_data[T](mut middleware &T, key string)`
  - `pub fn clear_middleware_data[T](mut middleware &T)`
  - `pub fn get_middleware_data[T](middleware &T) map[string]string`

  Simple middleware example:

```v
struct MyMiddleware{} //initialize struct for handling middlewares

struct App{
    vtelegram.Bot
}
[message] // specifies which middleware type is
fn (mw MyMidleware) my_message_middleware(mut update Update) bool{
    if update.message.from.id == 12345678{ // prevent update process from user with id 12345678
        return false
    }
    return true
}
fn main(){
    mut app := App{
        token: 'BOT_TOKEN'
    }

    //passing middleware struct to PollingConfig for handling middleware methods
    polling_config := vtelegram.PollingConfig[MyMiddleware]{}
    vtelegram.start_polling(mut app, polling_config)
}
```

### v 0.5.0

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

### v 0.4.0

- `mut` to all bot methods
- Deleted `time_event`
- `log` instance to Bot struct, which includes bot debugging

### v 0.3.1

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

### v 0.1.1

- Added `starts_with` filter to `callback` handling mechanism
- Added `starts_with` filter to message handling mechanism, Can be > 1 options

### v 0.1.0

- Handling messages with attributes
- Handling callback_query with attribute

</details>
