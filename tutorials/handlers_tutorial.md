## Handling the updates

> Referring to vtelegram 1.6 version

Update handling flow can be defined as follows:

```
Getting update -> Filters -> Middleware -> Filters -> Your Handling Function
```

_Handler Function is last that will be executed in an update handling chain._
'Handler function' (or handler method) should look like this:

```v
[handler type]
fn (mut app App) your_method_name(result vtelegram.Result) {
    // your handlings
}
```

1. To get module to know which methods will be processed you need to set your function as method, in this example it is a method of `App` struct, which contains bot token and will be passed to `vtelegram.start_polling`
2. Your bot methods must accept `Result` type argument or be without arguments, to not get compile time errors.

   - `Result` type in method argument at this moment contains:

   ```v
   update Update // update which are passed to function
   data map[string]string // data which can be added on middlewares
   ```

3. To specify handler types in method attributes, use the attributes below.

### Update Handler Types

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

Handler type refer to update type in [Telegram Bot API](https://core.telegram.org/bots/api#update).<br>
Which handler type is set above the handler function, that update will apply to this function.

You can set context types on handlers as well as on top of middlewares, to know more about what is context filters you can look into this [tutorial](https://github.com/dnkdev/vtelegram/blob/master/tutorials/context_filters.md), as well as [middleware](https://github.com/dnkdev/vtelegram/blob/master/tutorials/middleware_tutorial.md) tutorial

#### Simple example with context filters

This method means that on users enters the /greetings command, bot will reply with greetings text, and this will only be in group chat (also bot should be admin of the group to get such updates or command should look like /greetings@your_bot_username_bot)

```v
[message: '/greetings']
[context: 'group']
fn (mut app App) greetings(result vt.Result) ! {
	result.update.message.reply(mut app, text: 'Hello, I\'m the Bot!')!
}

```

More use cases you can find in [examples](https://github.com/dnkdev/vtelegram/tree/master/examples) directory.
