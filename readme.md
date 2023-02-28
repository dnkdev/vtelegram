<h1>VTelegram
<img align="right" style="margin-top:15px;" src="https://img.shields.io/static/v1?logo=telegram&label=Telegram Bot API&message=6.5&labelColor=ffffff&color=blue" href="https://core.telegram.org/bots/api">
</h1>

<p align="center">
  <img src="https://github.com/dnkdev/vtelegram/raw/master/VTelegram.svg">
</p>

Library for building telegram bots in V language.
<br>
All methods are in snake_case instead of camelCase: `send_message` instead of `sendMessage`.
<br>
You can get acquainted with the Telegram Bot API [here](https://core.telegram.org/bots/api).

## Install

```
v install https://github.com/dnkdev/vtelegram

import vtelegram
```

## Roadmap

- [x] All updates handling through attributes
- [x] Middlewares `Test`
- [x] Context Filters
- [x] Logging
- [ ] Separating one attribute values with comma `,`
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

Context filters determine which update is relevant, works almost like an extension for handlers.<br>
For example, set `[context: 'private']` specifies that your methods will handle updates only in private chats. You can set a context filter both on top of middleware and on top of the handling function. That way you can handle updates and build logic very flexible.

Update handling flow can be defined as follows: <br>

```
Getting update -> Filters -> Middleware -> Filters -> Your Handling Function
```

For now middlewares can:

- Prevent update for passing to handlers ( middleware methods must return bool, `false` for prevent update )
- Transform update
- Pass data in `map[string]string` type to handlers

### WIP

All Telegram Bot API features is not tested yet.
If you encounter some issues or want to contribute, you are very welcome, please just open issue or PR.
