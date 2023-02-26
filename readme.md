# VTelegram

Library for building telegram bots in V language.
<br>
All methods are in snake_case instead of camelCase: `send_message` instead of `sendMessage`.

Telegram Bot API 6.5 models and methods are present.
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
- [ ] more

### Middleware and Context Filters

Context filters determine which update is relevant. For example, set `[context: 'private']` specifies that your methods will handle updates only in private chats. You can set a context filter both on top of middleware and on top of the handling function. That way you can handle updates and build logic very flexible.

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
