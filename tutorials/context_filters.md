## Context Filters

> Referring to vtelegram 1.6 version

Update handling flow can be defined as follows:

```
Getting update -> Filters -> Middleware -> Filters -> Your Handling Function
```

_Context Filters defines which updates will be handled with your middleware and with your handling methods._<br>

To specify a context filter you need to use a `context` keyword, set the attribute on top of the relevant method. Like so:

```v
// on top of handler
[message: '/start'] // will pe processed when user enter /start message
[context: 'private'] // specifies that method will be processed only in private chats
fn (mut app App) on_start_command(result vtelegram.Result) ! {
    // your start command handling
}

// on top of middleware
[message] // speciefies middleware type, will apply only to messages (all chats - private, groups)
[context: 'group'] // filter specifies that will be handled only group messages
fn (mut mw MyMiddleware) my_message_middleware(mut update Update) bool {
    // your message middleware handling
}
```

You can set a few context filters on one method:

```v
['context: photo']
['context: video']
['context: voice']
[message]
fn (mut app App) on_all_messages(result vtelegram.Result) ! {}
```

> **Note** For now, if you use a few attributes with the same name, you must put attributes into quotes, to not get compile time error. Should be `[context: 'photo, video, voice']` in the future.

Example above specifies handler, which will be executed on all messages which contains photo, video or voice

Be aware that some of filter + handler type combination no makes sense, cause method not be executed ever. This combination will not pass ever:

```v
[message]  // set handling type 'message' is not related to channels
[context: 'channel'] // set context 'channel' is not make sense with message type
```

in this case to handle channel you may use channel_post handler type. context 'channel' is needed for other use cases.

```v
[channel_post]
```

### Context Filter Types

Available contexts at the moment are:

```v
// text filter relative to messages updates with text or caption
text
// forward filter relative to messages updates which are forwarded, apply to messages and channel_post
forward
// reply filter relative to messages updates which are replies to other messages
reply
// private filter relative to chat type, which is private
private
// group filter relative to chat type, which is group or supergroup
group
// channel filter relative to chat type, which is channel
channel
// if update.message.from.is_bot
sender_bot
// if update.message.from.is_bot == false
sender_user
// if update.message.sender_chat.@type == 'group' or 'supergroup'
sender_group
// if update.message.sender_chat.@type == 'channel'
sender_channel
// filters below relative to the relevant meaning in the Telegram Bot API
entities
animation
audio
document
photo
sticker
video
video_note
voice
contact
dice
game
poll
venue
location
new_chat_members
left_chat_member
new_chat_title
new_chat_photo
delete_chat_photo
group_chat_created
supergroup_chat_created
channel_chat_created
message_auto_delete_timer_changed
is_topic_message
pinned_message
invoice
successful_payment
user_shared
chat_shared
connected_website
write_access_allowed
passport_data
proximity_alert_triggered
video_chat_scheduled
video_chat_started
video_chat_ended
video_chat_participants_invited
web_app_data
```

All filters logic is in [filters.v](https://github.com/dnkdev/vtelegram/blob/master/src/filters.v)

More use cases you can find in [examples](https://github.com/dnkdev/vtelegram/tree/master/examples) directory.
