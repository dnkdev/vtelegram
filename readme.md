<div align="center">
  <img src="https://raw.githubusercontent.com/dnkdev/vtelegram/master/VTelegram.svg">
</div>

<h1>VTelegram 0.11
<img align="right" style="margin-top:15px;" src="https://img.shields.io/static/v1?logo=telegram&label=Telegram Bot API&message=6.9&labelColor=ffffff&color=blue" href="https://core.telegram.org/bots/api">
</h1>

Library for building telegram bots in V language. <br><br>
**Early stage**. In some cases, it does what should.<br><br>
All methods are in snake_case instead of camelCase: `send_message` instead of `sendMessage`.
<br>
You can get acquainted with the Telegram Bot API [here](https://core.telegram.org/bots/api).

## Important Note

This library was primarily developed for personal use, and while it provides some functionality, it may lack comprehensive knowledge of best practices and advanced features. Additionally, it has not been tested in real-life high-pressure projects. However, this library may have further evolving, at the moment based on my needs and preferences.

So to be transparent about the state of this library:

- The library may not follow best practices.
- Gaps in the features of the Telegram Bot API.
- Real-life high-pressure testing has not been conducted.
- It is worth consider the state of the V language

<b>\* V language need to have proper concurrency in next 0.5 release to work smoothly... existed `spawn` is making lower level threads and overhead of them could lead to unexpected behavior.</b>

### Contributing

Contributions to this library are highly welcome. If you have suggestions for improvements, bug fixes, or additional features, please feel free to open an issue or submit a PR.

## Installation

```
v install https://github.com/dnkdev/vtelegram

import vtelegram
```

## Roadmap

- [x] All updates handling using attributes
- [x] Middlewares `Test`
- [x] Context Filters
- [x] Single files uploading and sending
- [x] MediaGroup uploading and sending
- [x] Sticker uploading, sticker set creation
- [ ] WebHooks
- [ ] Methods with `chat_id` field in the format `@username` (atm only in `i64` - unique id)
- [ ] more

## Quick start

[Examples](https://github.com/dnkdev/vtelegram/tree/master/examples) of vtelegram use.<br>
[Tutorials](https://github.com/dnkdev/vtelegram/wiki/Tutorials) on wiki page, with a bit broader explanation of key features.

### Handler attributes

Handlers are your _methods_ which are marked with the attributes which are listed below to indicate which update your method will handle.

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

### Context Filters and Middleware

Context filters determine which update is relevant.<br>
For example, `[context: 'private']` specifies that your method will handle updates only in private chats. You can set a context filter both on top of middleware and on top of the handling function. That way you can handle updates and build logic very flexible.

Update handling flow can be defined as follows: <br>

```
Getting update -> Filters -> Middleware -> Filters -> Your Handling Function
```

For now middlewares can:

- Prevent update for passing to handlers ( middleware methods must return bool, `false` for prevent update )
- Transform update
