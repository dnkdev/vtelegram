module vtelegram
import json

fn return_int(response string) int{
	return response.int()
}
fn return_string(response string) string{
	return response
}
fn return_bool(response string) bool{
	if response == 'true'{
		return true
	}
	else {
		return false
	}
}
fn return_data[T](response string) T{
	resp := json.decode(T, response) or {
		return T{}
	}
	return resp
}

[params]
pub struct GetUpdates {
pub mut:
    // offset Identifier of the first update to be returned. Must be greater by one than the highest among the identifiers of previously received updates. By default, updates starting with the earliest unconfirmed update are returned. An update is considered confirmed as soon as getUpdates is called with an offset higher than its update_id. The negative offset can be specified to retrieve updates starting from -offset update from the end of the updates queue. All previous updates will forgotten.
    offset int
    // limit Limits the number of updates to be retrieved. Values between 1-100 are accepted. Defaults to 100.
    limit int = 100
    // timeout Timeout in seconds for long polling. Defaults to 0, i.e. usual short polling. Should be positive, short polling should be used for testing purposes only.
    timeout int
    // allowed_updates A JSON-serialized list of the update types you want your bot to receive. For example, specify [“message”, “edited_channel_post”, “callback_query”] to only receive updates of these types. See Update for a complete list of available update types. Specify an empty list to receive all update types except chat_member (default). If not specified, the previous setting will be used.
    // Please note that this parameter doesn't affect updates created before the call to the getUpdates, so unwanted updates may be received for a short period of time.
    allowed_updates []string
}
// get_updates - getUpdates
// Use this method to receive incoming updates using long polling (wiki). Returns an Array of Update objects.
pub fn (mut b Bot) get_updates(params GetUpdates) ![]Update {
    resp := b.http_request('getUpdates', json.encode(params))!
    return return_data[[]Update](resp)
}

[params]
pub struct SetWebhook {
    // url HTTPS URL to send updates to. Use an empty string to remove webhook integration
    url string
    // certificate Upload your public key certificate so that the root certificate in use can be checked. See our self-signed guide for details.
    certificate string
    // ip_address The fixed IP address which will be used to send webhook requests instead of the IP address resolved through DNS
    ip_address string
    // max_connections The maximum allowed number of simultaneous HTTPS connections to the webhook for update delivery, 1-100. Defaults to 40. Use lower values to limit the load on your bot's server, and higher values to increase your bot's throughput.
    max_connections int
    // allowed_updates A JSON-serialized list of the update types you want your bot to receive. For example, specify [“message”, “edited_channel_post”, “callback_query”] to only receive updates of these types. See Update for a complete list of available update types. Specify an empty list to receive all update types except chat_member (default). If not specified, the previous setting will be used.
    // Please note that this parameter doesn't affect updates created before the call to the setWebhook, so unwanted updates may be received for a short period of time.
    allowed_updates []string
    // drop_pending_updates Pass True to drop all pending updates
    drop_pending_updates bool
    // secret_token A secret token to be sent in a header “X-Telegram-Bot-Api-Secret-Token” in every webhook request, 1-256 characters. Only characters A-Z, a-z, 0-9, _ and - are allowed. The header is useful to ensure that the request comes from a webhook set by you.
    secret_token string
}
// set_webhook - setWebhook
// Use this method to specify a URL and receive incoming updates via an outgoing webhook. Whenever there is an update for the bot, we will send an HTTPS POST request to the specified URL, containing a JSON-serialized Update. In case of an unsuccessful request, we will give up after a reasonable amount of attempts. Returns True on success.
pub fn (mut b Bot) set_webhook(params SetWebhook) !bool {
    resp := b.http_request('setWebhook', json.encode(params))!
    // '
    return return_bool(resp)
}

[params]
pub struct DeleteWebhook {
}
// delete_webhook - deleteWebhook
// Use this method to remove webhook integration if you decide to switch back to getUpdates. Returns True on success.
pub fn (mut b Bot) delete_webhook(params DeleteWebhook) !bool {
    resp := b.http_request('deleteWebhook', json.encode(params))!
    // '
    return return_bool(resp)
}

[params]
pub struct GetWebhookInfo {
}
// get_webhook_info - getWebhookInfo
// Use this method to get current webhook status. Requires no parameters. On success, returns a WebhookInfo object. If the bot is using getUpdates, will return an object with the url field empty.
pub fn (mut b Bot) get_webhook_info(params GetWebhookInfo) !WebhookInfo {
    resp := b.http_request('getWebhookInfo', json.encode(params))!
    // '
    return return_data[WebhookInfo](resp)
}

[params]
pub struct GetMe {
}
// get_me - getMe
// A simple method for testing your bot's authentication token. Requires no parameters. Returns basic information about the bot in form of a User object.
pub fn (mut b Bot) get_me(params GetMe) !User {
    resp := b.http_request('getMe', json.encode(params))!
    // '
    return return_data[User](resp)
}

[params]
pub struct LogOut {
    // chat_id Unique identifier for the target chat or username of the target channel (in the format @channelusername)
    chat_id i64
    // message_thread_id Unique identifier for the target message thread (topic) of the forum; for forum supergroups only
    message_thread_id int
    // text Text of the message to be sent, 1-4096 characters after entities parsing
    text string
    // parse_mode Mode for parsing entities in the message text. See formatting options for more details.
    parse_mode string
    // entities A JSON-serialized list of special entities that appear in message text, which can be specified instead of parse_mode
    entities []MessageEntity
    // disable_web_page_preview Disables link previews for links in this message
    disable_web_page_preview bool
    // disable_notification Sends the message silently. Users will receive a notification with no sound.
    disable_notification bool
    // protect_content Protects the contents of the sent message from forwarding and saving
    protect_content bool
    // reply_to_message_id If the message is a reply, ID of the original message
    reply_to_message_id int
    // allow_sending_without_reply Pass True if the message should be sent even if the specified replied-to message is not found
    allow_sending_without_reply bool
    // reply_markup Additional interface options. A JSON-serialized object for an inline keyboard, custom reply keyboard, inpub structions to remove reply keyboard or to force a reply from the user.
    reply_markup ReplyMarkup
}
// log_out - logOut
// Use this method to log out from the cloud Bot API server before launching the bot locally. You must log out the bot before running it locally, otherwise there is no guarantee that the bot will receive updates. After a successful call, you can immediately log in on a local server, but will not be able to log in back to the cloud Bot API server for 10 minutes. Returns True on success. Requires no parameters.
pub fn (mut b Bot) log_out(params LogOut) !bool {
    resp := b.http_request('logOut', json.encode(params))!
    // '
    return return_bool(resp)
}

[params]
pub struct Close {
    // chat_id Unique identifier for the target chat or username of the target channel (in the format @channelusername)
    chat_id i64
    // message_thread_id Unique identifier for the target message thread (topic) of the forum; for forum supergroups only
    message_thread_id int
    // text Text of the message to be sent, 1-4096 characters after entities parsing
    text string
    // parse_mode Mode for parsing entities in the message text. See formatting options for more details.
    parse_mode string
    // entities A JSON-serialized list of special entities that appear in message text, which can be specified instead of parse_mode
    entities []MessageEntity
    // disable_web_page_preview Disables link previews for links in this message
    disable_web_page_preview bool
    // disable_notification Sends the message silently. Users will receive a notification with no sound.
    disable_notification bool
    // protect_content Protects the contents of the sent message from forwarding and saving
    protect_content bool
    // reply_to_message_id If the message is a reply, ID of the original message
    reply_to_message_id int
    // allow_sending_without_reply Pass True if the message should be sent even if the specified replied-to message is not found
    allow_sending_without_reply bool
    // reply_markup Additional interface options. A JSON-serialized object for an inline keyboard, custom reply keyboard, inpub structions to remove reply keyboard or to force a reply from the user.
    reply_markup ReplyMarkup
}
// close - close
// Use this method to close the bot instance before moving it from one local server to another. You need to delete the webhook before calling this method to ensure that the bot isn't launched again after server restart. The method will return error 429 in the first 10 minutes after the bot is launched. Returns True on success. Requires no parameters.
pub fn (mut b Bot) close(params Close) !bool {
    resp := b.http_request('close', json.encode(params))!
    // '
    return return_bool(resp)
}

[params]
pub struct SendMessage {
mut:
    // chat_id Unique identifier for the target chat or username of the target channel (in the format @channelusername)
    chat_id i64
    // message_thread_id Unique identifier for the target message thread (topic) of the forum; for forum supergroups only
    message_thread_id int
    // text Text of the message to be sent, 1-4096 characters after entities parsing
    text string
    // parse_mode Mode for parsing entities in the message text. See formatting options for more details.
    parse_mode string
    // entities A JSON-serialized list of special entities that appear in message text, which can be specified instead of parse_mode
    entities []MessageEntity
    // disable_web_page_preview Disables link previews for links in this message
    disable_web_page_preview bool
    // disable_notification Sends the message silently. Users will receive a notification with no sound.
    disable_notification bool
    // protect_content Protects the contents of the sent message from forwarding and saving
    protect_content bool
    // reply_to_message_id If the message is a reply, ID of the original message
    reply_to_message_id int
    // allow_sending_without_reply Pass True if the message should be sent even if the specified replied-to message is not found
    allow_sending_without_reply bool
    // reply_markup Additional interface options. A JSON-serialized object for an inline keyboard, custom reply keyboard, inpub structions to remove reply keyboard or to force a reply from the user.
    reply_markup ReplyMarkup
}
// send_message - sendMessage
// Use this method to send text messages. On success, the sent Message is returned.
pub fn (mut b Bot) send_message(params SendMessage) !Message {
    resp := b.http_request('sendMessage', json.encode(params))!
    //// '
    return return_data[Message](resp)
}

[params]
pub struct ForwardMessage {
    // chat_id Unique identifier for the target chat or username of the target channel (in the format @channelusername)
    chat_id i64
    // message_thread_id Unique identifier for the target message thread (topic) of the forum; for forum supergroups only
    message_thread_id int
    // from_chat_id Unique identifier for the chat where the original message was sent (or channel username in the format @channelusername)
    from_chat_id int
    // disable_notification Sends the message silently. Users will receive a notification with no sound.
    disable_notification bool
    // protect_content Protects the contents of the forwarded message from forwarding and saving
    protect_content bool
    // message_id Message identifier in the chat specified in from_chat_id
    message_id int
}
// forward_message - forwardMessage
// Use this method to forward messages of any kind. Service messages can't be forwarded. On success, the sent Message is returned.
pub fn (mut b Bot) forward_message(params ForwardMessage) !Message {
    resp := b.http_request('forwardMessage', json.encode(params))!
    // '
    return return_data[Message](resp)
}

[params]
pub struct CopyMessage {
    // chat_id Unique identifier for the target chat or username of the target channel (in the format @channelusername)
    chat_id i64
    // message_thread_id Unique identifier for the target message thread (topic) of the forum; for forum supergroups only
    message_thread_id int
    // from_chat_id Unique identifier for the chat where the original message was sent (or channel username in the format @channelusername)
    from_chat_id int
    // message_id Message identifier in the chat specified in from_chat_id
    message_id int
    // caption New caption for media, 0-1024 characters after entities parsing. If not specified, the original caption is kept
    caption string
    // parse_mode Mode for parsing entities in the new caption. See formatting options for more details.
    parse_mode string
    // caption_entities A JSON-serialized list of special entities that appear in the new caption, which can be specified instead of parse_mode
    caption_entities []MessageEntity
    // disable_notification Sends the message silently. Users will receive a notification with no sound.
    disable_notification bool
    // protect_content Protects the contents of the sent message from forwarding and saving
    protect_content bool
    // reply_to_message_id If the message is a reply, ID of the original message
    reply_to_message_id int
    // allow_sending_without_reply Pass True if the message should be sent even if the specified replied-to message is not found
    allow_sending_without_reply bool
    // reply_markup Additional interface options. A JSON-serialized object for an inline keyboard, custom reply keyboard, inpub structions to remove reply keyboard or to force a reply from the user.
    reply_markup ReplyMarkup
}
// copy_message - copyMessage
// Use this method to copy messages of any kind. Service messages and invoice messages can't be copied. A quiz poll can be copied only if the value of the field correct_option_id is known to the bot. The method is analogous to the method forwardMessage, but the copied message doesn't have a link to the original message. Returns the MessageId of the sent message on success.
pub fn (mut b Bot) copy_message(params CopyMessage) !MessageId {
    resp := b.http_request('copyMessage', json.encode(params))!
    // '
    return return_data[MessageId](resp)
}

[params]
pub struct SendPhoto {
    // chat_id Unique identifier for the target chat or username of the target channel (in the format @channelusername)
    chat_id i64
    // message_thread_id Unique identifier for the target message thread (topic) of the forum; for forum supergroups only
    message_thread_id int
    // photo Photo to send. Pass a file_id as String to send a photo that exists on the Telegram servers (recommended), pass an HTTP URL as a String for Telegram to get a photo from the Internet, or upload a new photo using multipart/form-data. The photo must be at most 10 MB in size. The photo's width and height must not exceed 10000 in total. Width and height ratio must be at most 20. More information on Sending Files »
    photo string
    // caption Photo caption (may also be used when resending photos by file_id), 0-1024 characters after entities parsing
    caption string
    // parse_mode Mode for parsing entities in the photo caption. See formatting options for more details.
    parse_mode string
    // caption_entities A JSON-serialized list of special entities that appear in the caption, which can be specified instead of parse_mode
    caption_entities []MessageEntity
    // has_spoiler Pass True if the photo needs to be covered with a spoiler animation
    has_spoiler bool
    // disable_notification Sends the message silently. Users will receive a notification with no sound.
    disable_notification bool
    // protect_content Protects the contents of the sent message from forwarding and saving
    protect_content bool
    // reply_to_message_id If the message is a reply, ID of the original message
    reply_to_message_id int
    // allow_sending_without_reply Pass True if the message should be sent even if the specified replied-to message is not found
    allow_sending_without_reply bool
    // reply_markup Additional interface options. A JSON-serialized object for an inline keyboard, custom reply keyboard, inpub structions to remove reply keyboard or to force a reply from the user.
    reply_markup ReplyMarkup
}
// send_photo - sendPhoto
// Use this method to send photos. On success, the sent Message is returned.
pub fn (mut b Bot) send_photo(params SendPhoto) !Message {
    resp := b.http_request('sendPhoto', json.encode(params))!
    // '
    return return_data[Message](resp)
}

[params]
pub struct SendAudio {
    // chat_id Unique identifier for the target chat or username of the target channel (in the format @channelusername)
    chat_id i64
    // message_thread_id Unique identifier for the target message thread (topic) of the forum; for forum supergroups only
    message_thread_id int
    // audio Audio file to send. Pass a file_id as String to send an audio file that exists on the Telegram servers (recommended), pass an HTTP URL as a String for Telegram to get an audio file from the Internet, or upload a new one using multipart/form-data. More information on Sending Files »
    audio string
    // caption Audio caption, 0-1024 characters after entities parsing
    caption string
    // parse_mode Mode for parsing entities in the audio caption. See formatting options for more details.
    parse_mode string
    // caption_entities A JSON-serialized list of special entities that appear in the caption, which can be specified instead of parse_mode
    caption_entities []MessageEntity
    // duration Duration of the audio in seconds
    duration int
    // performer Performer
    performer string
    // title Track name
    title string
    // thumb Thumbnail of the file sent; can be ignored if thumbnail generation for the file is supported server-side. The thumbnail should be in JPEG format and less than 200 kB in size. A thumbnail's width and height should not exceed 320. Ignored if the file is not uploaded using multipart/form-data. Thumbnails can't be reused and can be only uploaded as a new file, so you can pass “attach://<file_attach_name>” if the thumbnail was uploaded using multipart/form-data under <file_attach_name>. More information on Sending Files »
    thumb string
    // disable_notification Sends the message silently. Users will receive a notification with no sound.
    disable_notification bool
    // protect_content Protects the contents of the sent message from forwarding and saving
    protect_content bool
    // reply_to_message_id If the message is a reply, ID of the original message
    reply_to_message_id int
    // allow_sending_without_reply Pass True if the message should be sent even if the specified replied-to message is not found
    allow_sending_without_reply bool
    // reply_markup Additional interface options. A JSON-serialized object for an inline keyboard, custom reply keyboard, inpub structions to remove reply keyboard or to force a reply from the user.
    reply_markup ReplyMarkup
}
// send_audio - sendAudio
// Use this method to send audio files, if you want Telegram clients to display them in the music player. Your audio must be in the .MP3 or .M4A format. On success, the sent Message is returned. Bots can currently send audio files of up to 50 MB in size, this limit may be changed in the future.
pub fn (mut b Bot) send_audio(params SendAudio) !Message {
    resp := b.http_request('sendAudio', json.encode(params))!
    // '
    return return_data[Message](resp)
}

[params]
pub struct SendDocument {
    // chat_id Unique identifier for the target chat or username of the target channel (in the format @channelusername)
    chat_id i64
    // message_thread_id Unique identifier for the target message thread (topic) of the forum; for forum supergroups only
    message_thread_id int
    // document File to send. Pass a file_id as String to send a file that exists on the Telegram servers (recommended), pass an HTTP URL as a String for Telegram to get a file from the Internet, or upload a new one using multipart/form-data. More information on Sending Files »
    document string
    // thumb Thumbnail of the file sent; can be ignored if thumbnail generation for the file is supported server-side. The thumbnail should be in JPEG format and less than 200 kB in size. A thumbnail's width and height should not exceed 320. Ignored if the file is not uploaded using multipart/form-data. Thumbnails can't be reused and can be only uploaded as a new file, so you can pass “attach://<file_attach_name>” if the thumbnail was uploaded using multipart/form-data under <file_attach_name>. More information on Sending Files »
    thumb string
    // caption Document caption (may also be used when resending documents by file_id), 0-1024 characters after entities parsing
    caption string
    // parse_mode Mode for parsing entities in the document caption. See formatting options for more details.
    parse_mode string
    // caption_entities A JSON-serialized list of special entities that appear in the caption, which can be specified instead of parse_mode
    caption_entities []MessageEntity
    // disable_content_type_detection Disables automatic server-side content type detection for files uploaded using multipart/form-data
    disable_content_type_detection bool
    // disable_notification Sends the message silently. Users will receive a notification with no sound.
    disable_notification bool
    // protect_content Protects the contents of the sent message from forwarding and saving
    protect_content bool
    // reply_to_message_id If the message is a reply, ID of the original message
    reply_to_message_id int
    // allow_sending_without_reply Pass True if the message should be sent even if the specified replied-to message is not found
    allow_sending_without_reply bool
    // reply_markup Additional interface options. A JSON-serialized object for an inline keyboard, custom reply keyboard, inpub structions to remove reply keyboard or to force a reply from the user.
    reply_markup ReplyMarkup
}
// send_document - sendDocument
// Use this method to send general files. On success, the sent Message is returned. Bots can currently send files of any type of up to 50 MB in size, this limit may be changed in the future.
pub fn (mut b Bot) send_document(params SendDocument) !Message {
    resp := b.http_request('sendDocument', json.encode(params))!
    // '
    return return_data[Message](resp)
}

[params]
pub struct SendVideo {
    // chat_id Unique identifier for the target chat or username of the target channel (in the format @channelusername)
    chat_id i64
    // message_thread_id Unique identifier for the target message thread (topic) of the forum; for forum supergroups only
    message_thread_id int
    // video Video to send. Pass a file_id as String to send a video that exists on the Telegram servers (recommended), pass an HTTP URL as a String for Telegram to get a video from the Internet, or upload a new video using multipart/form-data. More information on Sending Files »
    video string
    // duration Duration of sent video in seconds
    duration int
    // width Video width
    width int
    // height Video height
    height int
    // thumb Thumbnail of the file sent; can be ignored if thumbnail generation for the file is supported server-side. The thumbnail should be in JPEG format and less than 200 kB in size. A thumbnail's width and height should not exceed 320. Ignored if the file is not uploaded using multipart/form-data. Thumbnails can't be reused and can be only uploaded as a new file, so you can pass “attach://<file_attach_name>” if the thumbnail was uploaded using multipart/form-data under <file_attach_name>. More information on Sending Files »
    thumb string
    // caption Video caption (may also be used when resending videos by file_id), 0-1024 characters after entities parsing
    caption string
    // parse_mode Mode for parsing entities in the video caption. See formatting options for more details.
    parse_mode string
    // caption_entities A JSON-serialized list of special entities that appear in the caption, which can be specified instead of parse_mode
    caption_entities []MessageEntity
    // has_spoiler Pass True if the video needs to be covered with a spoiler animation
    has_spoiler bool
    // supports_streaming Pass True if the uploaded video is suitable for streaming
    supports_streaming bool
    // disable_notification Sends the message silently. Users will receive a notification with no sound.
    disable_notification bool
    // protect_content Protects the contents of the sent message from forwarding and saving
    protect_content bool
    // reply_to_message_id If the message is a reply, ID of the original message
    reply_to_message_id int
    // allow_sending_without_reply Pass True if the message should be sent even if the specified replied-to message is not found
    allow_sending_without_reply bool
    // reply_markup Additional interface options. A JSON-serialized object for an inline keyboard, custom reply keyboard, inpub structions to remove reply keyboard or to force a reply from the user.
    reply_markup ReplyMarkup
}
// send_video - sendVideo
// Use this method to send video files, Telegram clients support MPEG4 videos (other formats may be sent as Document). On success, the sent Message is returned. Bots can currently send video files of up to 50 MB in size, this limit may be changed in the future.
pub fn (mut b Bot) send_video(params SendVideo) !Message {
    resp := b.http_request('sendVideo', json.encode(params))!
    // '
    return return_data[Message](resp)
}

[params]
pub struct SendAnimation {
    // chat_id Unique identifier for the target chat or username of the target channel (in the format @channelusername)
    chat_id i64
    // message_thread_id Unique identifier for the target message thread (topic) of the forum; for forum supergroups only
    message_thread_id int
    // animation Animation to send. Pass a file_id as String to send an animation that exists on the Telegram servers (recommended), pass an HTTP URL as a String for Telegram to get an animation from the Internet, or upload a new animation using multipart/form-data. More information on Sending Files »
    animation string
    // duration Duration of sent animation in seconds
    duration int
    // width Animation width
    width int
    // height Animation height
    height int
    // thumb Thumbnail of the file sent; can be ignored if thumbnail generation for the file is supported server-side. The thumbnail should be in JPEG format and less than 200 kB in size. A thumbnail's width and height should not exceed 320. Ignored if the file is not uploaded using multipart/form-data. Thumbnails can't be reused and can be only uploaded as a new file, so you can pass “attach://<file_attach_name>” if the thumbnail was uploaded using multipart/form-data under <file_attach_name>. More information on Sending Files »
    thumb string
    // caption Animation caption (may also be used when resending animation by file_id), 0-1024 characters after entities parsing
    caption string
    // parse_mode Mode for parsing entities in the animation caption. See formatting options for more details.
    parse_mode string
    // caption_entities A JSON-serialized list of special entities that appear in the caption, which can be specified instead of parse_mode
    caption_entities []MessageEntity
    // has_spoiler Pass True if the animation needs to be covered with a spoiler animation
    has_spoiler bool
    // disable_notification Sends the message silently. Users will receive a notification with no sound.
    disable_notification bool
    // protect_content Protects the contents of the sent message from forwarding and saving
    protect_content bool
    // reply_to_message_id If the message is a reply, ID of the original message
    reply_to_message_id int
    // allow_sending_without_reply Pass True if the message should be sent even if the specified replied-to message is not found
    allow_sending_without_reply bool
    // reply_markup Additional interface options. A JSON-serialized object for an inline keyboard, custom reply keyboard, inpub structions to remove reply keyboard or to force a reply from the user.
    reply_markup ReplyMarkup
}
// send_animation - sendAnimation
// Use this method to send animation files (GIF or H.264/MPEG-4 AVC video without sound). On success, the sent Message is returned. Bots can currently send animation files of up to 50 MB in size, this limit may be changed in the future.
pub fn (mut b Bot) send_animation(params SendAnimation) !Message {
    resp := b.http_request('sendAnimation', json.encode(params))!
    // '
    return return_data[Message](resp)
}

[params]
pub struct SendVoice {
    // chat_id Unique identifier for the target chat or username of the target channel (in the format @channelusername)
    chat_id i64
    // message_thread_id Unique identifier for the target message thread (topic) of the forum; for forum supergroups only
    message_thread_id int
    // voice Audio file to send. Pass a file_id as String to send a file that exists on the Telegram servers (recommended), pass an HTTP URL as a String for Telegram to get a file from the Internet, or upload a new one using multipart/form-data. More information on Sending Files »
    voice string
    // caption Voice message caption, 0-1024 characters after entities parsing
    caption string
    // parse_mode Mode for parsing entities in the voice message caption. See formatting options for more details.
    parse_mode string
    // caption_entities A JSON-serialized list of special entities that appear in the caption, which can be specified instead of parse_mode
    caption_entities []MessageEntity
    // duration Duration of the voice message in seconds
    duration int
    // disable_notification Sends the message silently. Users will receive a notification with no sound.
    disable_notification bool
    // protect_content Protects the contents of the sent message from forwarding and saving
    protect_content bool
    // reply_to_message_id If the message is a reply, ID of the original message
    reply_to_message_id int
    // allow_sending_without_reply Pass True if the message should be sent even if the specified replied-to message is not found
    allow_sending_without_reply bool
    // reply_markup Additional interface options. A JSON-serialized object for an inline keyboard, custom reply keyboard, inpub structions to remove reply keyboard or to force a reply from the user.
    reply_markup ReplyMarkup
}
// send_voice - sendVoice
// Use this method to send audio files, if you want Telegram clients to display the file as a playable voice message. For this to work, your audio must be in an .OGG file encoded with OPUS (other formats may be sent as Audio or Document). On success, the sent Message is returned. Bots can currently send voice messages of up to 50 MB in size, this limit may be changed in the future.
pub fn (mut b Bot) send_voice(params SendVoice) !Message {
    resp := b.http_request('sendVoice', json.encode(params))!
    // '
    return return_data[Message](resp)
}

[params]
pub struct SendVideoNote {
    // chat_id Unique identifier for the target chat or username of the target channel (in the format @channelusername)
    chat_id i64
    // message_thread_id Unique identifier for the target message thread (topic) of the forum; for forum supergroups only
    message_thread_id int
    // video_note Video note to send. Pass a file_id as String to send a video note that exists on the Telegram servers (recommended) or upload a new video using multipart/form-data. More information on Sending Files ». Sending video notes by a URL is currently unsupported
    video_note string
    // duration Duration of sent video in seconds
    duration int
    // length Video width and height, i.e. diameter of the video message
    length int
    // thumb Thumbnail of the file sent; can be ignored if thumbnail generation for the file is supported server-side. The thumbnail should be in JPEG format and less than 200 kB in size. A thumbnail's width and height should not exceed 320. Ignored if the file is not uploaded using multipart/form-data. Thumbnails can't be reused and can be only uploaded as a new file, so you can pass “attach://<file_attach_name>” if the thumbnail was uploaded using multipart/form-data under <file_attach_name>. More information on Sending Files »
    thumb string
    // disable_notification Sends the message silently. Users will receive a notification with no sound.
    disable_notification bool
    // protect_content Protects the contents of the sent message from forwarding and saving
    protect_content bool
    // reply_to_message_id If the message is a reply, ID of the original message
    reply_to_message_id int
    // allow_sending_without_reply Pass True if the message should be sent even if the specified replied-to message is not found
    allow_sending_without_reply bool
    // reply_markup Additional interface options. A JSON-serialized object for an inline keyboard, custom reply keyboard, inpub structions to remove reply keyboard or to force a reply from the user.
    reply_markup ReplyMarkup
}
// send_video_note - sendVideoNote
// As of v.4.0, Telegram clients support rounded square MPEG4 videos of up to 1 minute long. Use this method to send video messages. On success, the sent Message is returned.
pub fn (mut b Bot) send_video_note(params SendVideoNote) !Message {
    resp := b.http_request('sendVideoNote', json.encode(params))!
    // '
    return return_data[Message](resp)
}

[params]
pub struct SendMediaGroup {
    // chat_id Unique identifier for the target chat or username of the target channel (in the format @channelusername)
    chat_id i64
    // message_thread_id Unique identifier for the target message thread (topic) of the forum; for forum supergroups only
    message_thread_id int
    // media A JSON-serialized array describing messages to be sent, must include 2-10 items
    media []Media
    // disable_notification Sends messages silently. Users will receive a notification with no sound.
    disable_notification bool
    // protect_content Protects the contents of the sent messages from forwarding and saving
    protect_content bool
    // reply_to_message_id If the messages are a reply, ID of the original message
    reply_to_message_id int
    // allow_sending_without_reply Pass True if the message should be sent even if the specified replied-to message is not found
    allow_sending_without_reply bool
}
// send_media_group - sendMediaGroup
// Use this method to send a group of photos, videos, documents or audios as an album. Documents and audio files can be only grouped in an album with messages of the same type. On success, an array of Messages that were sent is returned.
pub fn (mut b Bot) send_media_group(params SendMediaGroup) ![]Message {
    resp := b.http_request('sendMediaGroup', json.encode(params))!
    // '
    return return_data[[]Message](resp)
}

[params]
pub struct SendLocation {
    // chat_id Unique identifier for the target chat or username of the target channel (in the format @channelusername)
    chat_id i64
    // message_thread_id Unique identifier for the target message thread (topic) of the forum; for forum supergroups only
    message_thread_id int
    // latitude Latitude of the location
    latitude f32
    // longitude Longitude of the location
    longitude f32
    // horizontal_accuracy The radius of uncertainty for the location, measured in meters; 0-1500
    horizontal_accuracy f32
    // live_period Period in seconds for which the location will be updated (see Live Locations, should be between 60 and 86400.
    live_period int
    // heading For live locations, a direction in which the user is moving, in degrees. Must be between 1 and 360 if specified.
    heading int
    // proximity_alert_radius For live locations, a maximum distance for proximity alerts about approaching another chat member, in meters. Must be between 1 and 100000 if specified.
    proximity_alert_radius int
    // disable_notification Sends the message silently. Users will receive a notification with no sound.
    disable_notification bool
    // protect_content Protects the contents of the sent message from forwarding and saving
    protect_content bool
    // reply_to_message_id If the message is a reply, ID of the original message
    reply_to_message_id int
    // allow_sending_without_reply Pass True if the message should be sent even if the specified replied-to message is not found
    allow_sending_without_reply bool
    // reply_markup Additional interface options. A JSON-serialized object for an inline keyboard, custom reply keyboard, inpub structions to remove reply keyboard or to force a reply from the user.
    reply_markup ReplyMarkup
}
// send_location - sendLocation
// Use this method to send point on the map. On success, the sent Message is returned.
pub fn (mut b Bot) send_location(params SendLocation) !Message {
    resp := b.http_request('sendLocation', json.encode(params))!
    // '
    return return_data[Message](resp)
}

[params]
pub struct EditMessageLiveLocation {
    // chat_id Required if inline_message_id is not specified. Unique identifier for the target chat or username of the target channel (in the format @channelusername)
    chat_id i64
    // message_id Required if inline_message_id is not specified. Identifier of the message to edit
    message_id int
    // inline_message_id Required if chat_id and message_id are not specified. Identifier of the inline message
    inline_message_id string
    // latitude Latitude of new location
    latitude f32
    // longitude Longitude of new location
    longitude f32
    // horizontal_accuracy The radius of uncertainty for the location, measured in meters; 0-1500
    horizontal_accuracy f32
    // heading Direction in which the user is moving, in degrees. Must be between 1 and 360 if specified.
    heading int
    // proximity_alert_radius The maximum distance for proximity alerts about approaching another chat member, in meters. Must be between 1 and 100000 if specified.
    proximity_alert_radius int
    // reply_markup A JSON-serialized object for a new inline keyboard.
    reply_markup InlineKeyboardMarkup
}
// edit_message_live_location - editMessageLiveLocation
// Use this method to edit live location messages. A location can be edited until its live_period expires or editing is explicitly disabled by a call to stopMessageLiveLocation. On success, if the edited message is not an inline message, the edited Message is returned, otherwise True is returned.
pub fn (mut b Bot) edit_message_live_location(params EditMessageLiveLocation) !Message {
    resp := b.http_request('editMessageLiveLocation', json.encode(params))!
    // '
    return return_data[Message](resp)
}

[params]
pub struct StopMessageLiveLocation {
    // chat_id Required if inline_message_id is not specified. Unique identifier for the target chat or username of the target channel (in the format @channelusername)
    chat_id i64
    // message_id Required if inline_message_id is not specified. Identifier of the message with live location to stop
    message_id int
    // inline_message_id Required if chat_id and message_id are not specified. Identifier of the inline message
    inline_message_id string
    // reply_markup A JSON-serialized object for a new inline keyboard.
    reply_markup InlineKeyboardMarkup
}
// stop_message_live_location - stopMessageLiveLocation
// Use this method to stop updating a live location message before live_period expires. On success, if the message is not an inline message, the edited Message is returned, otherwise True is returned.
pub fn (mut b Bot) stop_message_live_location(params StopMessageLiveLocation) !Message {
    resp := b.http_request('stopMessageLiveLocation', json.encode(params))!
    // '
    return return_data[Message](resp)
}

[params]
pub struct SendVenue {
    // chat_id Unique identifier for the target chat or username of the target channel (in the format @channelusername)
    chat_id i64
    // message_thread_id Unique identifier for the target message thread (topic) of the forum; for forum supergroups only
    message_thread_id int
    // latitude Latitude of the venue
    latitude f32
    // longitude Longitude of the venue
    longitude f32
    // title Name of the venue
    title string
    // address Address of the venue
    address string
    // foursquare_id Foursquare identifier of the venue
    foursquare_id string
    // foursquare_type Foursquare type of the venue, if known. (For example, “arts_entertainment/default”, “arts_entertainment/aquarium” or “food/icecream”.)
    foursquare_type string
    // google_place_id Google Places identifier of the venue
    google_place_id string
    // google_place_type Google Places type of the venue. (See supported types.)
    google_place_type string
    // disable_notification Sends the message silently. Users will receive a notification with no sound.
    disable_notification bool
    // protect_content Protects the contents of the sent message from forwarding and saving
    protect_content bool
    // reply_to_message_id If the message is a reply, ID of the original message
    reply_to_message_id int
    // allow_sending_without_reply Pass True if the message should be sent even if the specified replied-to message is not found
    allow_sending_without_reply bool
    // reply_markup Additional interface options. A JSON-serialized object for an inline keyboard, custom reply keyboard, inpub structions to remove reply keyboard or to force a reply from the user.
    reply_markup ReplyMarkup
}
// send_venue - sendVenue
// Use this method to send information about a venue. On success, the sent Message is returned.
pub fn (mut b Bot) send_venue(params SendVenue) !Message {
    resp := b.http_request('sendVenue', json.encode(params))!
    // '
    return return_data[Message](resp)
}

[params]
pub struct SendContact {
    // chat_id Unique identifier for the target chat or username of the target channel (in the format @channelusername)
    chat_id i64
    // message_thread_id Unique identifier for the target message thread (topic) of the forum; for forum supergroups only
    message_thread_id int
    // phone_number Contact's phone number
    phone_number string
    // first_name Contact's first name
    first_name string
    // last_name Contact's last name
    last_name string
    // vcard Additional data about the contact in the form of a vCard, 0-2048 bytes
    vcard string
    // disable_notification Sends the message silently. Users will receive a notification with no sound.
    disable_notification bool
    // protect_content Protects the contents of the sent message from forwarding and saving
    protect_content bool
    // reply_to_message_id If the message is a reply, ID of the original message
    reply_to_message_id int
    // allow_sending_without_reply Pass True if the message should be sent even if the specified replied-to message is not found
    allow_sending_without_reply bool
    // reply_markup Additional interface options. A JSON-serialized object for an inline keyboard, custom reply keyboard, inpub structions to remove reply keyboard or to force a reply from the user.
    reply_markup ReplyMarkup
}
// send_contact - sendContact
// Use this method to send phone contacts. On success, the sent Message is returned.
pub fn (mut b Bot) send_contact(params SendContact) !Message {
    resp := b.http_request('sendContact', json.encode(params))!
    // '
    return return_data[Message](resp)
}

[params]
pub struct SendPoll {
    // chat_id Unique identifier for the target chat or username of the target channel (in the format @channelusername)
    chat_id i64
    // message_thread_id Unique identifier for the target message thread (topic) of the forum; for forum supergroups only
    message_thread_id int
    // question Poll question, 1-300 characters
    question string
    // options A JSON-serialized list of answer options, 2-10 strings 1-100 characters each
    options []string
    // is_anonymous True, if the poll needs to be anonymous, defaults to True
    is_anonymous bool
    // @type Poll type, “quiz” or “regular”, defaults to “regular”
    @type string
    // allows_multiple_answers True, if the poll allows multiple answers, ignored for polls in quiz mode, defaults to False
    allows_multiple_answers bool
    // correct_option_id 0-based identifier of the correct answer option, required for polls in quiz mode
    correct_option_id int
    // explanation Text that is shown when a user chooses an incorrect answer or taps on the lamp icon in a quiz-style poll, 0-200 characters with at most 2 line feeds after entities parsing
    explanation string
    // explanation_parse_mode Mode for parsing entities in the explanation. See formatting options for more details.
    explanation_parse_mode string
    // explanation_entities A JSON-serialized list of special entities that appear in the poll explanation, which can be specified instead of parse_mode
    explanation_entities []MessageEntity
    // open_period Amount of time in seconds the poll will be active after creation, 5-600. Can't be used together with close_date.
    open_period int
    // close_date Point in time (Unix timestamp) when the poll will be automatically closed. Must be at least 5 and no more than 600 seconds in the future. Can't be used together with open_period.
    close_date int
    // is_closed Pass True if the poll needs to be immediately closed. This can be useful for poll preview.
    is_closed bool
    // disable_notification Sends the message silently. Users will receive a notification with no sound.
    disable_notification bool
    // protect_content Protects the contents of the sent message from forwarding and saving
    protect_content bool
    // reply_to_message_id If the message is a reply, ID of the original message
    reply_to_message_id int
    // allow_sending_without_reply Pass True if the message should be sent even if the specified replied-to message is not found
    allow_sending_without_reply bool
    // reply_markup Additional interface options. A JSON-serialized object for an inline keyboard, custom reply keyboard, inpub structions to remove reply keyboard or to force a reply from the user.
    reply_markup ReplyMarkup
}
// send_poll - sendPoll
// Use this method to send a native poll. On success, the sent Message is returned.
pub fn (mut b Bot) send_poll(params SendPoll) !Message {
    resp := b.http_request('sendPoll', json.encode(params))!
    // '
    return return_data[Message](resp)
}

[params]
pub struct SendDice {
    // chat_id Unique identifier for the target chat or username of the target channel (in the format @channelusername)
    chat_id i64
    // message_thread_id Unique identifier for the target message thread (topic) of the forum; for forum supergroups only
    message_thread_id int
    // emoji Emoji on which the dice throw animation is based. Currently, must be one of “”, “”, “”, “”, “”, or “”. Dice can have values 1-6 for “”, “” and “”, values 1-5 for “” and “”, and values 1-64 for “”. Defaults to “”
    emoji string
    // disable_notification Sends the message silently. Users will receive a notification with no sound.
    disable_notification bool
    // protect_content Protects the contents of the sent message from forwarding
    protect_content bool
    // reply_to_message_id If the message is a reply, ID of the original message
    reply_to_message_id int
    // allow_sending_without_reply Pass True if the message should be sent even if the specified replied-to message is not found
    allow_sending_without_reply bool
    // reply_markup Additional interface options. A JSON-serialized object for an inline keyboard, custom reply keyboard, inpub structions to remove reply keyboard or to force a reply from the user.
    reply_markup ReplyMarkup
}
// send_dice - sendDice
// Use this method to send an animated emoji that will display a random value. On success, the sent Message is returned.
pub fn (mut b Bot) send_dice(params SendDice) !Message {
    resp := b.http_request('sendDice', json.encode(params))!
    // '
    return return_data[Message](resp)
}

[params]
pub struct SendChatAction {
    // chat_id Unique identifier for the target chat or username of the target channel (in the format @channelusername)
    chat_id i64
    // message_thread_id Unique identifier for the target message thread; supergroups only
    message_thread_id int
    // action Type of action to broadcast. Choose one, depending on what the user is about to receive: typing for text messages, upload_photo for photos, record_video or upload_video for videos, record_voice or upload_voice for voice notes, upload_document for general files, choose_sticker for stickers, find_location for location data, record_video_note or upload_video_note for video notes.
    action string
}
// send_chat_action - sendChatAction
// Use this method when you need to tell the user that something is happening on the bot's side. The status is set for 5 seconds or less (when a message arrives from your bot, Telegram clients clear its typing status). Returns True on success.
pub fn (mut b Bot) send_chat_action(params SendChatAction) !bool {
    resp := b.http_request('sendChatAction', json.encode(params))!
    // '
    return return_bool(resp)
}

[params]
pub struct GetUserProfilePhotos {
    // user_id Unique identifier of the target user
    user_id int
    // offset Sequential number of the first photo to be returned. By default, all photos are returned.
    offset int
    // limit Limits the number of photos to be retrieved. Values between 1-100 are accepted. Defaults to 100.
    limit int
}
// get_user_profile_photos - getUserProfilePhotos
// Use this method to get a list of profile pictures for a user. Returns a UserProfilePhotos object.
pub fn (mut b Bot) get_user_profile_photos(params GetUserProfilePhotos) !UserProfilePhotos {
    resp := b.http_request('getUserProfilePhotos', json.encode(params))!
    // '
    return return_data[UserProfilePhotos](resp)
}

[params]
pub struct GetFile {
    // file_id File identifier to get information about
    file_id string
}
// get_file - getFile
// Use this method to get basic information about a file and prepare it for downloading. For the moment, bots can download files of up to 20MB in size. On success, a File object is returned. The file can then be downloaded via the link https://api.telegram.org/file/bot<token>/<file_path>, where <file_path> is taken from the response. It is guaranteed that the link will be valid for at least 1 hour. When the link expires, a new one can be requested by calling getFile again.
pub fn (mut b Bot) get_file(params GetFile) !File {
    resp := b.http_request('getFile', json.encode(params))!
    // '
    return return_data[File](resp)
}

[params]
pub struct BanChatMember {
    // chat_id Unique identifier for the target group or username of the target supergroup or channel (in the format @channelusername)
    chat_id i64
    // user_id Unique identifier of the target user
    user_id int
    // until_date Date when the user will be unbanned, unix time. If user is banned for more than 366 days or less than 30 seconds from the current time they are considered to be banned forever. Applied for supergroups and channels only.
    until_date int
    // revoke_messages Pass True to delete all messages from the chat for the user that is being removed. If False, the user will be able to see messages in the group that were sent before the user was removed. Always True for supergroups and channels.
    revoke_messages bool
}
// ban_chat_member - banChatMember
// Use this method to ban a user in a group, a supergroup or a channel. In the case of supergroups and channels, the user will not be able to return to the chat on their own using invite links, etc., unless unbanned first. The bot must be an administrator in the chat for this to work and must have the appropriate administrator rights. Returns True on success.
pub fn (mut b Bot) ban_chat_member(params BanChatMember) !bool {
    resp := b.http_request('banChatMember', json.encode(params))!
    // '
    return return_bool(resp)
}

[params]
pub struct UnbanChatMember {
    // chat_id Unique identifier for the target group or username of the target supergroup or channel (in the format @channelusername)
    chat_id i64
    // user_id Unique identifier of the target user
    user_id int
    // only_if_banned Do nothing if the user is not banned
    only_if_banned bool
}
// unban_chat_member - unbanChatMember
// Use this method to unban a previously banned user in a supergroup or channel. The user will not return to the group or channel automatically, but will be able to join via link, etc. The bot must be an administrator for this to work. By default, this method guarantees that after the call the user is not a member of the chat, but will be able to join it. So if the user is a member of the chat they will also be removed from the chat. If you don't want this, use the parameter only_if_banned. Returns True on success.
pub fn (mut b Bot) unban_chat_member(params UnbanChatMember) !bool {
    resp := b.http_request('unbanChatMember', json.encode(params))!
    // '
    return return_bool(resp)
}

[params]
pub struct RestrictChatMember {
    // chat_id Unique identifier for the target chat or username of the target supergroup (in the format @supergroupusername)
    chat_id i64
    // user_id Unique identifier of the target user
    user_id int
    // permissions A JSON-serialized object for new user permissions
    permissions ChatPermissions
	// use_independent_chat_permissions Optional Pass True if chat permissions are set independently.
	// Otherwise, the can_send_other_messages and can_add_web_page_previews permissions will imply the can_send_messages, can_send_audios, can_send_documents, can_send_photos, can_send_videos, can_send_video_notes, and can_send_voice_notes permissions; the can_send_polls permission will imply the can_send_messages permission.
	use_independent_chat_permissions bool
    // until_date Date when restrictions will be lifted for the user, unix time. If user is restricted for more than 366 days or less than 30 seconds from the current time, they are considered to be restricted forever
    until_date int
}
// restrict_chat_member - restrictChatMember
// Use this method to restrict a user in a supergroup. The bot must be an administrator in the supergroup for this to work and must have the appropriate administrator rights. Pass True for all permissions to lift restrictions from a user. Returns True on success.
pub fn (mut b Bot) restrict_chat_member(params RestrictChatMember) !bool {
    resp := b.http_request('restrictChatMember', json.encode(params))!
    // '
    return return_bool(resp)
}

[params]
pub struct PromoteChatMember {
    // chat_id Unique identifier for the target chat or username of the target channel (in the format @channelusername)
    chat_id i64
    // user_id Unique identifier of the target user
    user_id int
    // is_anonymous Pass True if the administrator's presence in the chat is hidden
    is_anonymous bool
    // can_manage_chat Pass True if the administrator can access the chat event log, chat statistics, message statistics in channels, see channel members, see anonymous administrators in supergroups and ignore slow mode. Implied by any other administrator privilege
    can_manage_chat bool
    // can_post_messages Pass True if the administrator can create channel posts, channels only
    can_post_messages bool
    // can_edit_messages Pass True if the administrator can edit messages of other users and can pin messages, channels only
    can_edit_messages bool
    // can_delete_messages Pass True if the administrator can delete messages of other users
    can_delete_messages bool
    // can_manage_video_chats Pass True if the administrator can manage video chats
    can_manage_video_chats bool
    // can_restrict_members Pass True if the administrator can restrict, ban or unban chat members
    can_restrict_members bool
    // can_promote_members Pass True if the administrator can add new administrators with a subset of their own privileges or demote administrators that he has promoted, directly or indirectly (promoted by administrators that were appointed by him)
    can_promote_members bool
    // can_change_info Pass True if the administrator can change chat title, photo and other settings
    can_change_info bool
    // can_invite_users Pass True if the administrator can invite new users to the chat
    can_invite_users bool
    // can_pin_messages Pass True if the administrator can pin messages, supergroups only
    can_pin_messages bool
    // can_manage_topics Pass True if the user is allowed to create, rename, close, and reopen forum topics, supergroups only
    can_manage_topics bool
}
// promote_chat_member - promoteChatMember
// Use this method to promote or demote a user in a supergroup or a channel. The bot must be an administrator in the chat for this to work and must have the appropriate administrator rights. Pass False for all boolean parameters to demote a user. Returns True on success.
pub fn (mut b Bot) promote_chat_member(params PromoteChatMember) !bool {
    resp := b.http_request('promoteChatMember', json.encode(params))!
    // '
    return return_bool(resp)
}

[params]
pub struct SetChatAdministratorCustomTitle {
    // chat_id Unique identifier for the target chat or username of the target supergroup (in the format @supergroupusername)
    chat_id i64
    // user_id Unique identifier of the target user
    user_id int
    // custom_title New custom title for the administrator; 0-16 characters, emoji are not allowed
    custom_title string
}
// set_chat_administrator_custom_title - setChatAdministratorCustomTitle
// Use this method to set a custom title for an administrator in a supergroup promoted by the bot. Returns True on success.
pub fn (mut b Bot) set_chat_administrator_custom_title(params SetChatAdministratorCustomTitle) !bool {
    resp := b.http_request('setChatAdministratorCustomTitle', json.encode(params))!
    // '
    return return_bool(resp)
}

[params]
pub struct BanChatSenderChat {
    // chat_id Unique identifier for the target chat or username of the target channel (in the format @channelusername)
    chat_id i64
    // sender_chat_id Unique identifier of the target sender chat
    sender_chat_id int
}
// ban_chat_sender_chat - banChatSenderChat
// Use this method to ban a channel chat in a supergroup or a channel. Until the chat is unbanned, the owner of the banned chat won't be able to send messages on behalf of any of their channels. The bot must be an administrator in the supergroup or channel for this to work and must have the appropriate administrator rights. Returns True on success.
pub fn (mut b Bot) ban_chat_sender_chat(params BanChatSenderChat) !bool {
    resp := b.http_request('banChatSenderChat', json.encode(params))!
    // '
    return return_bool(resp)
}

[params]
pub struct UnbanChatSenderChat {
    // chat_id Unique identifier for the target chat or username of the target channel (in the format @channelusername)
    chat_id i64
    // sender_chat_id Unique identifier of the target sender chat
    sender_chat_id int
}
// unban_chat_sender_chat - unbanChatSenderChat
// Use this method to unban a previously banned channel chat in a supergroup or channel. The bot must be an administrator for this to work and must have the appropriate administrator rights. Returns True on success.
pub fn (mut b Bot) unban_chat_sender_chat(params UnbanChatSenderChat) !bool {
    resp := b.http_request('unbanChatSenderChat', json.encode(params))!
    // '
    return return_bool(resp)
}

[params]
pub struct SetChatPermissions {
    // chat_id Unique identifier for the target chat or username of the target supergroup (in the format @supergroupusername)
    chat_id i64
    // permissions A JSON-serialized object for new default chat permissions
    permissions ChatPermissions
	// use_independent_chat_permissions Optional Pass True if chat permissions are set independently.
	// Otherwise, the can_send_other_messages and can_add_web_page_previews permissions will imply the can_send_messages, can_send_audios, can_send_documents, can_send_photos, can_send_videos, can_send_video_notes, and can_send_voice_notes permissions; the can_send_polls permission will imply the can_send_messages permission.
	use_independent_chat_permissions bool
}
// set_chat_permissions - setChatPermissions
// Use this method to set default chat permissions for all members. The bot must be an administrator in the group or a supergroup for this to work and must have the can_restrict_members administrator rights. Returns True on success.
pub fn (mut b Bot) set_chat_permissions(params SetChatPermissions) !bool {
    resp := b.http_request('setChatPermissions', json.encode(params))!
    // '
    return return_bool(resp)
}

[params]
pub struct ExportChatInviteLink {
    // chat_id Unique identifier for the target chat or username of the target channel (in the format @channelusername)
    chat_id i64
}
// export_chat_invite_link - exportChatInviteLink
// Use this method to generate a new primary invite link for a chat; any previously generated primary link is revoked. The bot must be an administrator in the chat for this to work and must have the appropriate administrator rights. Returns the new invite link as String on success.
pub fn (mut b Bot) export_chat_invite_link(params ExportChatInviteLink) !string {
    resp := b.http_request('exportChatInviteLink', json.encode(params))!
    // '
    return return_string(resp)
}

[params]
pub struct CreateChatInviteLink {
    // chat_id Unique identifier for the target chat or username of the target channel (in the format @channelusername)
    chat_id i64
    // name Invite link name; 0-32 characters
    name string
    // expire_date Point in time (Unix timestamp) when the link will expire
    expire_date int
    // member_limit The maximum number of users that can be members of the chat simultaneously after joining the chat via this invite link; 1-99999
    member_limit int
    // creates_join_request True, if users joining the chat via the link need to be approved by chat administrators. If True, member_limit can't be specified
    creates_join_request bool
}
// create_chat_invite_link - createChatInviteLink
// Use this method to create an additional invite link for a chat. The bot must be an administrator in the chat for this to work and must have the appropriate administrator rights. The link can be revoked using the method revokeChatInviteLink. Returns the new invite link as ChatInviteLink object.
pub fn (mut b Bot) create_chat_invite_link(params CreateChatInviteLink) !ChatInviteLink {
    resp := b.http_request('createChatInviteLink', json.encode(params))!
    // '
    return return_data[ChatInviteLink](resp)
}

[params]
pub struct EditChatInviteLink {
    // chat_id Unique identifier for the target chat or username of the target channel (in the format @channelusername)
    chat_id i64
    // invite_link The invite link to edit
    invite_link string
    // name Invite link name; 0-32 characters
    name string
    // expire_date Point in time (Unix timestamp) when the link will expire
    expire_date int
    // member_limit The maximum number of users that can be members of the chat simultaneously after joining the chat via this invite link; 1-99999
    member_limit int
    // creates_join_request True, if users joining the chat via the link need to be approved by chat administrators. If True, member_limit can't be specified
    creates_join_request bool
}
// edit_chat_invite_link - editChatInviteLink
// Use this method to edit a non-primary invite link created by the bot. The bot must be an administrator in the chat for this to work and must have the appropriate administrator rights. Returns the edited invite link as a ChatInviteLink object.
pub fn (mut b Bot) edit_chat_invite_link(params EditChatInviteLink) !ChatInviteLink {
    resp := b.http_request('editChatInviteLink', json.encode(params))!
    // '
    return return_data[ChatInviteLink](resp)
}

[params]
pub struct RevokeChatInviteLink {
    // chat_id Unique identifier of the target chat or username of the target channel (in the format @channelusername)
    chat_id i64
    // invite_link The invite link to revoke
    invite_link string
}
// revoke_chat_invite_link - revokeChatInviteLink
// Use this method to revoke an invite link created by the bot. If the primary link is revoked, a new link is automatically generated. The bot must be an administrator in the chat for this to work and must have the appropriate administrator rights. Returns the revoked invite link as ChatInviteLink object.
pub fn (mut b Bot) revoke_chat_invite_link(params RevokeChatInviteLink) !ChatInviteLink {
    resp := b.http_request('revokeChatInviteLink', json.encode(params))!
    // '
    return return_data[ChatInviteLink](resp)
}

[params]
pub struct ApproveChatJoinRequest {
    // chat_id Unique identifier for the target chat or username of the target channel (in the format @channelusername)
    chat_id i64
    // user_id Unique identifier of the target user
    user_id int
}
// approve_chat_join_request - approveChatJoinRequest
// Use this method to approve a chat join request. The bot must be an administrator in the chat for this to work and must have the can_invite_users administrator right. Returns True on success.
pub fn (mut b Bot) approve_chat_join_request(params ApproveChatJoinRequest) !bool {
    resp := b.http_request('approveChatJoinRequest', json.encode(params))!
    // '
    return return_bool(resp)
}

[params]
pub struct DeclineChatJoinRequest {
    // chat_id Unique identifier for the target chat or username of the target channel (in the format @channelusername)
    chat_id i64
    // user_id Unique identifier of the target user
    user_id int
}
// decline_chat_join_request - declineChatJoinRequest
// Use this method to decline a chat join request. The bot must be an administrator in the chat for this to work and must have the can_invite_users administrator right. Returns True on success.
pub fn (mut b Bot) decline_chat_join_request(params DeclineChatJoinRequest) !bool {
    resp := b.http_request('declineChatJoinRequest', json.encode(params))!
    // '
    return return_bool(resp)
}

[params]
pub struct SetChatPhoto {
    // chat_id Unique identifier for the target chat or username of the target channel (in the format @channelusername)
    chat_id i64
    // photo New chat photo, uploaded using multipart/form-data
    photo string
}
// set_chat_photo - setChatPhoto
// Use this method to set a new profile photo for the chat. Photos can't be changed for private chats. The bot must be an administrator in the chat for this to work and must have the appropriate administrator rights. Returns True on success.
pub fn (mut b Bot) set_chat_photo(params SetChatPhoto) !bool {
    resp := b.http_request('setChatPhoto', json.encode(params))!
    // '
    return return_bool(resp)
}

[params]
pub struct DeleteChatPhoto {
    // chat_id Unique identifier for the target chat or username of the target channel (in the format @channelusername)
    chat_id i64
}
// delete_chat_photo - deleteChatPhoto
// Use this method to delete a chat photo. Photos can't be changed for private chats. The bot must be an administrator in the chat for this to work and must have the appropriate administrator rights. Returns True on success.
pub fn (mut b Bot) delete_chat_photo(params DeleteChatPhoto) !bool {
    resp := b.http_request('deleteChatPhoto', json.encode(params))!
    // '
    return return_bool(resp)
}

[params]
pub struct SetChatTitle {
    // chat_id Unique identifier for the target chat or username of the target channel (in the format @channelusername)
    chat_id i64
    // title New chat title, 1-128 characters
    title string
}
// set_chat_title - setChatTitle
// Use this method to change the title of a chat. Titles can't be changed for private chats. The bot must be an administrator in the chat for this to work and must have the appropriate administrator rights. Returns True on success.
pub fn (mut b Bot) set_chat_title(params SetChatTitle) !bool {
    resp := b.http_request('setChatTitle', json.encode(params))!
    // '
    return return_bool(resp)
}

[params]
pub struct SetChatDescription {
    // chat_id Unique identifier for the target chat or username of the target channel (in the format @channelusername)
    chat_id i64
    // description New chat description, 0-255 characters
    description string
}
// set_chat_description - setChatDescription
// Use this method to change the description of a group, a supergroup or a channel. The bot must be an administrator in the chat for this to work and must have the appropriate administrator rights. Returns True on success.
pub fn (mut b Bot) set_chat_description(params SetChatDescription) !bool {
    resp := b.http_request('setChatDescription', json.encode(params))!
    // '
    return return_bool(resp)
}

[params]
pub struct PinChatMessage {
    // chat_id Unique identifier for the target chat or username of the target channel (in the format @channelusername)
    chat_id i64
    // message_id Identifier of a message to pin
    message_id int
    // disable_notification Pass True if it is not necessary to send a notification to all chat members about the new pinned message. Notifications are always disabled in channels and private chats.
    disable_notification bool
}
// pin_chat_message - pinChatMessage
// Use this method to add a message to the list of pinned messages in a chat. If the chat is not a private chat, the bot must be an administrator in the chat for this to work and must have the 'can_pin_messages' administrator right in a supergroup or 'can_edit_messages' administrator right in a channel. Returns True on success.
pub fn (mut b Bot) pin_chat_message(params PinChatMessage) !bool {
    resp := b.http_request('pinChatMessage', json.encode(params))!
    // '
    return return_bool(resp)
}

[params]
pub struct UnpinChatMessage {
    // chat_id Unique identifier for the target chat or username of the target channel (in the format @channelusername)
    chat_id i64
    // message_id Identifier of a message to unpin. If not specified, the most recent pinned message (by sending date) will be unpinned.
    message_id int
}
// unpin_chat_message - unpinChatMessage
// Use this method to remove a message from the list of pinned messages in a chat. If the chat is not a private chat, the bot must be an administrator in the chat for this to work and must have the 'can_pin_messages' administrator right in a supergroup or 'can_edit_messages' administrator right in a channel. Returns True on success.
pub fn (mut b Bot) unpin_chat_message(params UnpinChatMessage) !bool {
    resp := b.http_request('unpinChatMessage', json.encode(params))!
    // '
    return return_bool(resp)
}

[params]
pub struct UnpinAllChatMessages {
    // chat_id Unique identifier for the target chat or username of the target channel (in the format @channelusername)
    chat_id i64
}
// unpin_all_chat_messages - unpinAllChatMessages
// Use this method to clear the list of pinned messages in a chat. If the chat is not a private chat, the bot must be an administrator in the chat for this to work and must have the 'can_pin_messages' administrator right in a supergroup or 'can_edit_messages' administrator right in a channel. Returns True on success.
pub fn (mut b Bot) unpin_all_chat_messages(params UnpinAllChatMessages) !bool {
    resp := b.http_request('unpinAllChatMessages', json.encode(params))!
    // '
    return return_bool(resp)
}

[params]
pub struct LeaveChat {
    // chat_id Unique identifier for the target chat or username of the target supergroup or channel (in the format @channelusername)
    chat_id i64
}
// leave_chat - leaveChat
// Use this method for your bot to leave a group, supergroup or channel. Returns True on success.
pub fn (mut b Bot) leave_chat(params LeaveChat) !bool {
    resp := b.http_request('leaveChat', json.encode(params))!
    // '
    return return_bool(resp)
}

[params]
pub struct GetChat {
    // chat_id Unique identifier for the target chat or username of the target supergroup or channel (in the format @channelusername)
    chat_id i64
}
// get_chat - getChat
// Use this method to get up to date information about the chat (current name of the user for one-on-one conversations, current username of a user, group or channel, etc.). Returns a Chat object on success.
pub fn (mut b Bot) get_chat(params GetChat) !Chat {
    resp := b.http_request('getChat', json.encode(params))!
    // '
    return return_data[Chat](resp)
}

[params]
pub struct GetChatAdministrators {
    // chat_id Unique identifier for the target chat or username of the target supergroup or channel (in the format @channelusername)
    chat_id i64
}
// get_chat_administrators - getChatAdministrators
// Use this method to get a list of administrators in a chat, which aren't bots. Returns an Array of ChatMember objects.
pub fn (mut b Bot) get_chat_administrators(params GetChatAdministrators) ![]ChatMember {
    resp := b.http_request('getChatAdministrators', json.encode(params))!
    // '
    return return_data[[]ChatMember](resp)
}

[params]
pub struct GetChatMemberCount {
    // chat_id Unique identifier for the target chat or username of the target supergroup or channel (in the format @channelusername)
    chat_id i64
}
// get_chat_member_count - getChatMemberCount
// Use this method to get the number of members in a chat. Returns Int on success.
pub fn (mut b Bot) get_chat_member_count(params GetChatMemberCount) !int {
    resp := b.http_request('getChatMemberCount', json.encode(params))!
    // '
    return return_int(resp)
}

[params]
pub struct GetChatMember {
    // chat_id Unique identifier for the target chat or username of the target supergroup or channel (in the format @channelusername)
    chat_id i64
    // user_id Unique identifier of the target user
    user_id int
}
// get_chat_member - getChatMember
// Use this method to get information about a member of a chat. The method is guaranteed to work only if the bot is an administrator in the chat. Returns a ChatMember object on success.
pub fn (mut b Bot) get_chat_member(params GetChatMember) !ChatMember {
    resp := b.http_request('getChatMember', json.encode(params))!
    // '
    return return_data[ChatMember](resp)
}

[params]
pub struct SetChatStickerSet {
    // chat_id Unique identifier for the target chat or username of the target supergroup (in the format @supergroupusername)
    chat_id i64
    // sticker_set_name Name of the sticker set to be set as the group sticker set
    sticker_set_name string
}
// set_chat_sticker_set - setChatStickerSet
// Use this method to set a new group sticker set for a supergroup. The bot must be an administrator in the chat for this to work and must have the appropriate administrator rights. Use the field can_set_sticker_set optionally returned in getChat requests to check if the bot can use this method. Returns True on success.
pub fn (mut b Bot) set_chat_sticker_set(params SetChatStickerSet) !bool {
    resp := b.http_request('setChatStickerSet', json.encode(params))!
    // '
    return return_bool(resp)
}

[params]
pub struct DeleteChatStickerSet {
    // chat_id Unique identifier for the target chat or username of the target supergroup (in the format @supergroupusername)
    chat_id i64
}
// delete_chat_sticker_set - deleteChatStickerSet
// Use this method to delete a group sticker set from a supergroup. The bot must be an administrator in the chat for this to work and must have the appropriate administrator rights. Use the field can_set_sticker_set optionally returned in getChat requests to check if the bot can use this method. Returns True on success.
pub fn (mut b Bot) delete_chat_sticker_set(params DeleteChatStickerSet) !bool {
    resp := b.http_request('deleteChatStickerSet', json.encode(params))!
    // '
    return return_bool(resp)
}

[params]
pub struct GetForumTopicIconStickers {
    // chat_id Unique identifier for the target chat or username of the target supergroup (in the format @supergroupusername)
    chat_id i64
    // name Topic name, 1-128 characters
    name string
    // icon_color Color of the topic icon in RGB format. Currently, must be one of 7322096 (0x6FB9F0), 16766590 (0xFFD67E), 13338331 (0xCB86DB), 9367192 (0x8EEE98), 16749490 (0xFF93B2), or 16478047 (0xFB6F5F)
    icon_color int
    // icon_custom_emoji_id Unique identifier of the custom emoji shown as the topic icon. Use getForumTopicIconStickers to get all allowed custom emoji identifiers.
    icon_custom_emoji_id string
}
// get_forum_topic_icon_stickers - getForumTopicIconStickers
// Use this method to get custom emoji stickers, which can be used as a forum topic icon by any user. Requires no parameters. Returns an Array of Sticker objects.
pub fn (mut b Bot) get_forum_topic_icon_stickers(params GetForumTopicIconStickers) ![]Sticker {
    resp := b.http_request('getForumTopicIconStickers', json.encode(params))!
    // '
    return return_data[[]Sticker](resp)
}

[params]
pub struct CreateForumTopic {
    // chat_id Unique identifier for the target chat or username of the target supergroup (in the format @supergroupusername)
    chat_id i64
    // name Topic name, 1-128 characters
    name string
    // icon_color Color of the topic icon in RGB format. Currently, must be one of 7322096 (0x6FB9F0), 16766590 (0xFFD67E), 13338331 (0xCB86DB), 9367192 (0x8EEE98), 16749490 (0xFF93B2), or 16478047 (0xFB6F5F)
    icon_color int
    // icon_custom_emoji_id Unique identifier of the custom emoji shown as the topic icon. Use getForumTopicIconStickers to get all allowed custom emoji identifiers.
    icon_custom_emoji_id string
}
// create_forum_topic - createForumTopic
// Use this method to create a topic in a forum supergroup chat. The bot must be an administrator in the chat for this to work and must have the can_manage_topics administrator rights. Returns information about the created topic as a ForumTopic object.
pub fn (mut b Bot) create_forum_topic(params CreateForumTopic) !ForumTopic {
    resp := b.http_request('createForumTopic', json.encode(params))!
    // '
    return return_data[ForumTopic](resp)
}

[params]
pub struct EditForumTopic {
    // chat_id Unique identifier for the target chat or username of the target supergroup (in the format @supergroupusername)
    chat_id i64
    // message_thread_id Unique identifier for the target message thread of the forum topic
    message_thread_id int
    // name New topic name, 0-128 characters. If not specified or empty, the current name of the topic will be kept
    name string
    // icon_custom_emoji_id New unique identifier of the custom emoji shown as the topic icon. Use getForumTopicIconStickers to get all allowed custom emoji identifiers. Pass an empty string to remove the icon. If not specified, the current icon will be kept
    icon_custom_emoji_id string
}
// edit_forum_topic - editForumTopic
// Use this method to edit name and icon of a topic in a forum supergroup chat. The bot must be an administrator in the chat for this to work and must have can_manage_topics administrator rights, unless it is the creator of the topic. Returns True on success.
pub fn (mut b Bot) edit_forum_topic(params EditForumTopic) !bool {
    resp := b.http_request('editForumTopic', json.encode(params))!
    // '
    return return_bool(resp)
}

[params]
pub struct CloseForumTopic {
    // chat_id Unique identifier for the target chat or username of the target supergroup (in the format @supergroupusername)
    chat_id i64
    // message_thread_id Unique identifier for the target message thread of the forum topic
    message_thread_id int
}
// close_forum_topic - closeForumTopic
// Use this method to close an open topic in a forum supergroup chat. The bot must be an administrator in the chat for this to work and must have the can_manage_topics administrator rights, unless it is the creator of the topic. Returns True on success.
pub fn (mut b Bot) close_forum_topic(params CloseForumTopic) !bool {
    resp := b.http_request('closeForumTopic', json.encode(params))!
    // '
    return return_bool(resp)
}

[params]
pub struct ReopenForumTopic {
    // chat_id Unique identifier for the target chat or username of the target supergroup (in the format @supergroupusername)
    chat_id i64
    // message_thread_id Unique identifier for the target message thread of the forum topic
    message_thread_id int
}
// reopen_forum_topic - reopenForumTopic
// Use this method to reopen a closed topic in a forum supergroup chat. The bot must be an administrator in the chat for this to work and must have the can_manage_topics administrator rights, unless it is the creator of the topic. Returns True on success.
pub fn (mut b Bot) reopen_forum_topic(params ReopenForumTopic) !bool {
    resp := b.http_request('reopenForumTopic', json.encode(params))!
    // '
    return return_bool(resp)
}

[params]
pub struct DeleteForumTopic {
    // chat_id Unique identifier for the target chat or username of the target supergroup (in the format @supergroupusername)
    chat_id i64
    // message_thread_id Unique identifier for the target message thread of the forum topic
    message_thread_id int
}
// delete_forum_topic - deleteForumTopic
// Use this method to delete a forum topic along with all its messages in a forum supergroup chat. The bot must be an administrator in the chat for this to work and must have the can_delete_messages administrator rights. Returns True on success.
pub fn (mut b Bot) delete_forum_topic(params DeleteForumTopic) !bool {
    resp := b.http_request('deleteForumTopic', json.encode(params))!
    // '
    return return_bool(resp)
}

[params]
pub struct UnpinAllForumTopicMessages {
    // chat_id Unique identifier for the target chat or username of the target supergroup (in the format @supergroupusername)
    chat_id i64
    // message_thread_id Unique identifier for the target message thread of the forum topic
    message_thread_id int
}
// unpin_all_forum_topic_messages - unpinAllForumTopicMessages
// Use this method to clear the list of pinned messages in a forum topic. The bot must be an administrator in the chat for this to work and must have the can_pin_messages administrator right in the supergroup. Returns True on success.
pub fn (mut b Bot) unpin_all_forum_topic_messages(params UnpinAllForumTopicMessages) !bool {
    resp := b.http_request('unpinAllForumTopicMessages', json.encode(params))!
    // '
    return return_bool(resp)
}

[params]
pub struct EditGeneralForumTopic {
    // chat_id Unique identifier for the target chat or username of the target supergroup (in the format @supergroupusername)
    chat_id i64
    // name New topic name, 1-128 characters
    name string
}
// edit_general_forum_topic - editGeneralForumTopic
// Use this method to edit the name of the 'General' topic in a forum supergroup chat. The bot must be an administrator in the chat for this to work and must have can_manage_topics administrator rights. Returns True on success.
pub fn (mut b Bot) edit_general_forum_topic(params EditGeneralForumTopic) !bool {
    resp := b.http_request('editGeneralForumTopic', json.encode(params))!
    // '
    return return_bool(resp)
}

[params]
pub struct CloseGeneralForumTopic {
    // chat_id Unique identifier for the target chat or username of the target supergroup (in the format @supergroupusername)
    chat_id i64
}
// close_general_forum_topic - closeGeneralForumTopic
// Use this method to close an open 'General' topic in a forum supergroup chat. The bot must be an administrator in the chat for this to work and must have the can_manage_topics administrator rights. Returns True on success.
pub fn (mut b Bot) close_general_forum_topic(params CloseGeneralForumTopic) !bool {
    resp := b.http_request('closeGeneralForumTopic', json.encode(params))!
    // '
    return return_bool(resp)
}

[params]
pub struct ReopenGeneralForumTopic {
    // chat_id Unique identifier for the target chat or username of the target supergroup (in the format @supergroupusername)
    chat_id i64
}
// reopen_general_forum_topic - reopenGeneralForumTopic
// Use this method to reopen a closed 'General' topic in a forum supergroup chat. The bot must be an administrator in the chat for this to work and must have the can_manage_topics administrator rights. The topic will be automatically unhidden if it was hidden. Returns True on success.
pub fn (mut b Bot) reopen_general_forum_topic(params ReopenGeneralForumTopic) !bool {
    resp := b.http_request('reopenGeneralForumTopic', json.encode(params))!
    // '
    return return_bool(resp)
}

[params]
pub struct HideGeneralForumTopic {
    // chat_id Unique identifier for the target chat or username of the target supergroup (in the format @supergroupusername)
    chat_id i64
}
// hide_general_forum_topic - hideGeneralForumTopic
// Use this method to hide the 'General' topic in a forum supergroup chat. The bot must be an administrator in the chat for this to work and must have the can_manage_topics administrator rights. The topic will be automatically closed if it was open. Returns True on success.
pub fn (mut b Bot) hide_general_forum_topic(params HideGeneralForumTopic) !bool {
    resp := b.http_request('hideGeneralForumTopic', json.encode(params))!
    // '
    return return_bool(resp)
}

[params]
pub struct UnhideGeneralForumTopic {
    // chat_id Unique identifier for the target chat or username of the target supergroup (in the format @supergroupusername)
    chat_id i64
}
// unhide_general_forum_topic - unhideGeneralForumTopic
// Use this method to unhide the 'General' topic in a forum supergroup chat. The bot must be an administrator in the chat for this to work and must have the can_manage_topics administrator rights. Returns True on success.
pub fn (mut b Bot) unhide_general_forum_topic(params UnhideGeneralForumTopic) !bool {
    resp := b.http_request('unhideGeneralForumTopic', json.encode(params))!
    // '
    return return_bool(resp)
}

[params]
pub struct AnswerCallbackQuery {
    // callback_query_id Unique identifier for the query to be answered
    callback_query_id string
    // text Text of the notification. If not specified, nothing will be shown to the user, 0-200 characters
    text string
    // show_alert If True, an alert will be shown by the client instead of a notification at the top of the chat screen. Defaults to false.
    show_alert bool
    // url URL that will be opened by the user's client. If you have created a Game and accepted the conditions via @BotFather, specify the URL that opens your game - note that this will only work if the query comes from a callback_game button.
    // Otherwise, you may use links like t.me/your_bot?start=XXXX that open your bot with a parameter.
    url string
    // cache_time The maximum amount of time in seconds that the result of the callback query may be cached client-side. Telegram apps will support caching starting in version 3.14. Defaults to 0.
    cache_time int
}
// answer_callback_query - answerCallbackQuery
// Use this method to send answers to callback queries sent from inline keyboards. The answer will be displayed to the user as a notification at the top of the chat screen or as an alert. On success, True is returned.
pub fn (mut b Bot) answer_callback_query(params AnswerCallbackQuery) !bool {
    resp := b.http_request('answerCallbackQuery', json.encode(params))!
    // '
    return return_bool(resp)
}

[params]
pub struct SetMyCommands {
    // commands A JSON-serialized list of bot commands to be set as the list of the bot's commands. At most 100 commands can be specified.
    commands []BotCommand
    // scope A JSON-serialized object, describing scope of users for which the commands are relevant. Defaults to BotCommandScopeDefault.
    scope BotCommandScope
    // language_code A two-letter ISO 639-1 language code. If empty, commands will be applied to all users from the given scope, for whose language there are no dedicated commands
    language_code string
}
// set_my_commands - setMyCommands
// Use this method to change the list of the bot's commands. See this manual for more details about bot commands. Returns True on success.
pub fn (mut b Bot) set_my_commands(params SetMyCommands) !bool {
    resp := b.http_request('setMyCommands', json.encode(params))!
    // '
    return return_bool(resp)
}

[params]
pub struct DeleteMyCommands {
    // scope A JSON-serialized object, describing scope of users for which the commands are relevant. Defaults to BotCommandScopeDefault.
    scope BotCommandScope
    // language_code A two-letter ISO 639-1 language code. If empty, commands will be applied to all users from the given scope, for whose language there are no dedicated commands
    language_code string
}
// delete_my_commands - deleteMyCommands
// Use this method to delete the list of the bot's commands for the given scope and user language. After deletion, higher level commands will be shown to affected users. Returns True on success.
pub fn (mut b Bot) delete_my_commands(params DeleteMyCommands) !bool {
    resp := b.http_request('deleteMyCommands', json.encode(params))!
    // '
    return return_bool(resp)
}

[params]
pub struct GetMyCommands {
	//scope Optional	A JSON-serialized object, describing scope of users. Defaults to BotCommandScopeDefault.
	scope BotCommandScope
	// language_code Optional	A two-letter ISO 639-1 language code or an empty string
	language_code string
}
// get_my_commands - getMyCommands
// Use this method to get the current list of the bot's commands for the given scope and user language. Returns an Array of BotCommand objects. If commands aren't set, an empty list is returned.
pub fn (mut b Bot) get_my_commands(params GetMyCommands) ![]BotCommand {
    resp := b.http_request('getMyCommands', json.encode(params))!
    // '
    return return_data[[]BotCommand](resp)
}

[params]
pub struct SetChatMenuButton {
    // chat_id Unique identifier for the target private chat. If not specified, default bot's menu button will be changed
    chat_id i64
    // menu_button A JSON-serialized object for the bot's new menu button. Defaults to MenuButtonDefault
    menu_button MenuButton
}
// set_chat_menu_button - setChatMenuButton
// Use this method to change the bot's menu button in a private chat, or the default menu button. Returns True on success.
pub fn (mut b Bot) set_chat_menu_button(params SetChatMenuButton) !bool {
    resp := b.http_request('setChatMenuButton', json.encode(params))!
    // '
    return return_bool(resp)
}

[params]
pub struct GetChatMenuButton {
    // chat_id Unique identifier for the target private chat. If not specified, default bot's menu button will be returned
    chat_id i64
}
// get_chat_menu_button - getChatMenuButton
// Use this method to get the current value of the bot's menu button in a private chat, or the default menu button. Returns MenuButton on success.
pub fn (mut b Bot) get_chat_menu_button(params GetChatMenuButton) !MenuButton {
    resp := b.http_request('getChatMenuButton', json.encode(params))!
    // '
    return return_data[MenuButton](resp)
}

[params]
pub struct SetMyDefaultAdministratorRights {
    // rights A JSON-serialized object describing new default administrator rights. If not specified, the default administrator rights will be cleared.
    rights ChatAdministratorRights
    // for_channels Pass True to change the default administrator rights of the bot in channels. Otherwise, the default administrator rights of the bot for groups and supergroups will be changed.
    for_channels bool
}
// set_my_default_administrator_rights - setMyDefaultAdministratorRights
// Use this method to change the default administrator rights requested by the bot when it's added as an administrator to groups or channels. These rights will be suggested to users, but they are are free to modify the list before adding the bot. Returns True on success.
pub fn (mut b Bot) set_my_default_administrator_rights(params SetMyDefaultAdministratorRights) !bool {
    resp := b.http_request('setMyDefaultAdministratorRights', json.encode(params))!
    // '
    return return_bool(resp)
}

[params]
pub struct GetMyDefaultAdministratorRights {
    // for_channels Pass True to get default administrator rights of the bot in channels. Otherwise, default administrator rights of the bot for groups and supergroups will be returned.
    for_channels bool
}
// get_my_default_administrator_rights - getMyDefaultAdministratorRights
// Use this method to get the current default administrator rights of the bot. Returns ChatAdministratorRights on success.
pub fn (mut b Bot) get_my_default_administrator_rights(params GetMyDefaultAdministratorRights) !ChatAdministratorRights {
    resp := b.http_request('getMyDefaultAdministratorRights', json.encode(params))!
    // '
    return return_data[ChatAdministratorRights](resp)
}

[params]
pub struct EditMessageText {
mut:
    // chat_id Required if inline_message_id is not specified. Unique identifier for the target chat or username of the target channel (in the format @channelusername)
    chat_id i64
    // message_id Required if inline_message_id is not specified. Identifier of the message to edit
    message_id int
    // inline_message_id Required if chat_id and message_id are not specified. Identifier of the inline message
    inline_message_id string
    // text New text of the message, 1-4096 characters after entities parsing
    text string
    // parse_mode Mode for parsing entities in the message text. See formatting options for more details.
    parse_mode string
    // entities A JSON-serialized list of special entities that appear in message text, which can be specified instead of parse_mode
    entities []MessageEntity
    // disable_web_page_preview Disables link previews for links in this message
    disable_web_page_preview bool
    // reply_markup A JSON-serialized object for an inline keyboard.
    reply_markup InlineKeyboardMarkup
}
// edit_message_text - editMessageText
// Use this method to edit text and game messages. On success, if the edited message is not an inline message, the edited Message is returned, otherwise True is returned.
pub fn (mut b Bot) edit_message_text(params EditMessageText) !Message {
    resp := b.http_request('editMessageText', json.encode(params))!
    // '
    return return_data[Message](resp)
}

[params]
pub struct EditMessageCaption {
    // chat_id Required if inline_message_id is not specified. Unique identifier for the target chat or username of the target channel (in the format @channelusername)
    chat_id i64
    // message_id Required if inline_message_id is not specified. Identifier of the message to edit
    message_id int
    // inline_message_id Required if chat_id and message_id are not specified. Identifier of the inline message
    inline_message_id string
    // caption New caption of the message, 0-1024 characters after entities parsing
    caption string
    // parse_mode Mode for parsing entities in the message caption. See formatting options for more details.
    parse_mode string
    // caption_entities A JSON-serialized list of special entities that appear in the caption, which can be specified instead of parse_mode
    caption_entities []MessageEntity
    // reply_markup A JSON-serialized object for an inline keyboard.
    reply_markup InlineKeyboardMarkup
}
// edit_message_caption - editMessageCaption
// Use this method to edit captions of messages. On success, if the edited message is not an inline message, the edited Message is returned, otherwise True is returned.
pub fn (mut b Bot) edit_message_caption(params EditMessageCaption) !Message {
    resp := b.http_request('editMessageCaption', json.encode(params))!
    // '
    return return_data[Message](resp)
}

[params]
pub struct EditMessageMedia {
    // chat_id Required if inline_message_id is not specified. Unique identifier for the target chat or username of the target channel (in the format @channelusername)
    chat_id i64
    // message_id Required if inline_message_id is not specified. Identifier of the message to edit
    message_id int
    // inline_message_id Required if chat_id and message_id are not specified. Identifier of the inline message
    inline_message_id string
    // media A JSON-serialized object for a new media content of the message
    media InputMedia
    // reply_markup A JSON-serialized object for a new inline keyboard.
    reply_markup InlineKeyboardMarkup
}
// edit_message_media - editMessageMedia
// Use this method to edit animation, audio, document, photo, or video messages. If a message is part of a message album, then it can be edited only to an audio for audio albums, only to a document for document albums and to a photo or a video otherwise. When an inline message is edited, a new file can't be uploaded; use a previously uploaded file via its file_id or specify a URL. On success, if the edited message is not an inline message, the edited Message is returned, otherwise True is returned.
pub fn (mut b Bot) edit_message_media(params EditMessageMedia) !Message {
    resp := b.http_request('editMessageMedia', json.encode(params))!
    // '
    return return_data[Message](resp)
}

[params]
pub struct EditMessageReplyMarkup {
    // chat_id Required if inline_message_id is not specified. Unique identifier for the target chat or username of the target channel (in the format @channelusername)
    chat_id i64
    // message_id Required if inline_message_id is not specified. Identifier of the message to edit
    message_id int
    // inline_message_id Required if chat_id and message_id are not specified. Identifier of the inline message
    inline_message_id string
    // reply_markup A JSON-serialized object for an inline keyboard.
    reply_markup InlineKeyboardMarkup
}
// edit_message_reply_markup - editMessageReplyMarkup
// Use this method to edit only the reply markup of messages. On success, if the edited message is not an inline message, the edited Message is returned, otherwise True is returned.
pub fn (mut b Bot) edit_message_reply_markup(params EditMessageReplyMarkup) !Message {
    resp := b.http_request('editMessageReplyMarkup', json.encode(params))!
    // '
    return return_data[Message](resp)
}

[params]
pub struct StopPoll {
    // chat_id Unique identifier for the target chat or username of the target channel (in the format @channelusername)
    chat_id i64
    // message_id Identifier of the original message with the poll
    message_id int
    // reply_markup A JSON-serialized object for a new message inline keyboard.
    reply_markup InlineKeyboardMarkup
}
// stop_poll - stopPoll
// Use this method to stop a poll which was sent by the bot. On success, the stopped Poll is returned.
pub fn (mut b Bot) stop_poll(params StopPoll) !Poll {
    resp := b.http_request('stopPoll', json.encode(params))!
    // '
    return return_data[Poll](resp)
}

[params]
pub struct DeleteMessage {
    // chat_id Unique identifier for the target chat or username of the target channel (in the format @channelusername)
    chat_id i64
    // message_id Identifier of the message to delete
    message_id int
}
// delete_message - deleteMessage
// Use this method to delete a message, including service messages, with the following limitations:
// - A message can only be deleted if it was sent less than 48 hours ago.
// - Service messages about a supergroup, channel, or forum topic creation can't be deleted.
// - A dice message in a private chat can only be deleted if it was sent more than 24 hours ago.
// - Bots can delete outgoing messages in private chats, groups, and supergroups.
// - Bots can delete incoming messages in private chats.
// - Bots granted can_post_messages permissions can delete outgoing messages in channels.
// - If the bot is an administrator of a group, it can delete any message there.
// - If the bot has can_delete_messages permission in a supergroup or a channel, it can delete any message there.
// Returns True on success.
pub fn (mut b Bot) delete_message(params DeleteMessage) !bool {
    resp := b.http_request('deleteMessage', json.encode(params))!
    // '
    return return_bool(resp)
}

[params]
pub struct SendSticker {
    // chat_id Unique identifier for the target chat or username of the target channel (in the format @channelusername)
    chat_id i64
    // message_thread_id Unique identifier for the target message thread (topic) of the forum; for forum supergroups only
    message_thread_id int
    // sticker Sticker to send. Pass a file_id as String to send a file that exists on the Telegram servers (recommended), pass an HTTP URL as a String for Telegram to get a .WEBP file from the Internet, or upload a new one using multipart/form-data. More information on Sending Files »
    sticker string
    // disable_notification Sends the message silently. Users will receive a notification with no sound.
    disable_notification bool
    // protect_content Protects the contents of the sent message from forwarding and saving
    protect_content bool
    // reply_to_message_id If the message is a reply, ID of the original message
    reply_to_message_id int
    // allow_sending_without_reply Pass True if the message should be sent even if the specified replied-to message is not found
    allow_sending_without_reply bool
    // reply_markup Additional interface options. A JSON-serialized object for an inline keyboard, custom reply keyboard, inpub structions to remove reply keyboard or to force a reply from the user.
    reply_markup ReplyMarkup
}
// send_sticker - sendSticker
// Use this method to send static .WEBP, animated .TGS, or video .WEBM stickers. On success, the sent Message is returned.
pub fn (mut b Bot) send_sticker(params SendSticker) !Message {
    resp := b.http_request('sendSticker', json.encode(params))!
    // '
    return return_data[Message](resp)
}

[params]
pub struct GetStickerSet {
    // name Name of the sticker set
    name string
}
// get_sticker_set - getStickerSet
// Use this method to get a sticker set. On success, a StickerSet object is returned.
pub fn (mut b Bot) get_sticker_set(params GetStickerSet) !StickerSet {
    resp := b.http_request('getStickerSet', json.encode(params))!
    // '
    return return_data[StickerSet](resp)
}

[params]
pub struct GetCustomEmojiStickers {
    // custom_emoji_ids List of custom emoji identifiers. At most 200 custom emoji identifiers can be specified.
    custom_emoji_ids []string
}
// get_custom_emoji_stickers - getCustomEmojiStickers
// Use this method to get information about custom emoji stickers by their identifiers. Returns an Array of Sticker objects.
pub fn (mut b Bot) get_custom_emoji_stickers(params GetCustomEmojiStickers) ![]string {
    resp := b.http_request('getCustomEmojiStickers', json.encode(params))!
    // '
    return return_data[[]string](resp)
}

[params]
pub struct UploadStickerFile {
    // user_id User identifier of sticker file owner
    user_id int
    // png_sticker PNG image with the sticker, must be up to 512 kilobytes in size, dimensions must not exceed 512px, and either width or height must be exactly 512px. More information on Sending Files »
    png_sticker string
}
// upload_sticker_file - uploadStickerFile
// Use this method to upload a .PNG file with a sticker for later use in createNewStickerSet and addStickerToSet methods (can be used multiple times). Returns the uploaded File on success.
pub fn (mut b Bot) upload_sticker_file(params UploadStickerFile) !File {
    resp := b.http_request('uploadStickerFile', json.encode(params))!
    // '
    return return_data[File](resp)
}

[params]
pub struct CreateNewStickerSet {
    // user_id User identifier of created sticker set owner
    user_id int
    // name Short name of sticker set, to be used in t.me/addstickers/ URLs (e.g., animals). Can contain only English letters, digits and underscores. Must begin with a letter, can't contain consecutive underscores and must end in "_by_<bot_username>". <bot_username> is case insensitive. 1-64 characters.
    name string
    // title Sticker set title, 1-64 characters
    title string
    // png_sticker PNG image with the sticker, must be up to 512 kilobytes in size, dimensions must not exceed 512px, and either width or height must be exactly 512px. Pass a file_id as a String to send a file that already exists on the Telegram servers, pass an HTTP URL as a String for Telegram to get a file from the Internet, or upload a new one using multipart/form-data. More information on Sending Files »
    png_sticker string
    // tgs_sticker TGS animation with the sticker, uploaded using multipart/form-data. See https://core.telegram.org/stickers#animated-sticker-requirements for technical requirements
    tgs_sticker string
    // webm_sticker WEBM video with the sticker, uploaded using multipart/form-data. See https://core.telegram.org/stickers#video-sticker-requirements for technical requirements
    webm_sticker string
    // sticker_type Type of stickers in the set, pass “regular” or “mask”. Custom emoji sticker sets can't be created via the Bot API at the moment. By default, a regular sticker set is created.
    sticker_type string
    // emojis One or more emoji corresponding to the sticker
    emojis string
    // mask_position A JSON-serialized object for position where the mask should be placed on faces
    mask_position MaskPosition
}
// create_new_sticker_set - createNewStickerSet
// Use this method to create a new sticker set owned by a user. The bot will be able to edit the sticker set thus created. You must use exactly one of the fields png_sticker, tgs_sticker, or webm_sticker. Returns True on success.
pub fn (mut b Bot) create_new_sticker_set(params CreateNewStickerSet) !bool {
    resp := b.http_request('createNewStickerSet', json.encode(params))!
    // '
    return return_bool(resp)
}

[params]
pub struct AddStickerToSet {
    // user_id User identifier of sticker set owner
    user_id int
    // name Sticker set name
    name string
    // png_sticker PNG image with the sticker, must be up to 512 kilobytes in size, dimensions must not exceed 512px, and either width or height must be exactly 512px. Pass a file_id as a String to send a file that already exists on the Telegram servers, pass an HTTP URL as a String for Telegram to get a file from the Internet, or upload a new one using multipart/form-data. More information on Sending Files »
    png_sticker string
    // tgs_sticker TGS animation with the sticker, uploaded using multipart/form-data. See https://core.telegram.org/stickers#animated-sticker-requirements for technical requirements
    tgs_sticker string
    // webm_sticker WEBM video with the sticker, uploaded using multipart/form-data. See https://core.telegram.org/stickers#video-sticker-requirements for technical requirements
    webm_sticker string
    // emojis One or more emoji corresponding to the sticker
    emojis string
    // mask_position A JSON-serialized object for position where the mask should be placed on faces
    mask_position MaskPosition
}
// add_sticker_to_set - addStickerToSet
// Use this method to add a new sticker to a set created by the bot. You must use exactly one of the fields png_sticker, tgs_sticker, or webm_sticker. Animated stickers can be added to animated sticker sets and only to them. Animated sticker sets can have up to 50 stickers. Static sticker sets can have up to 120 stickers. Returns True on success.
pub fn (mut b Bot) add_sticker_to_set(params AddStickerToSet) !bool {
    resp := b.http_request('addStickerToSet', json.encode(params))!
    // '
    return return_bool(resp)
}

[params]
pub struct SetStickerPositionInSet {
    // sticker File identifier of the sticker
    sticker string
    // position New sticker position in the set, zero-based
    position int
}
// set_sticker_position_in_set - setStickerPositionInSet
// Use this method to move a sticker in a set created by the bot to a specific position. Returns True on success.
pub fn (mut b Bot) set_sticker_position_in_set(params SetStickerPositionInSet) !bool {
    resp := b.http_request('setStickerPositionInSet', json.encode(params))!
    // '
    return return_bool(resp)
}

[params]
pub struct DeleteStickerFromSet {
    // sticker File identifier of the sticker
    sticker string
}
// delete_sticker_from_set - deleteStickerFromSet
// Use this method to delete a sticker from a set created by the bot. Returns True on success.
pub fn (mut b Bot) delete_sticker_from_set(params DeleteStickerFromSet) !bool {
    resp := b.http_request('deleteStickerFromSet', json.encode(params))!
    // '
    return return_bool(resp)
}

[params]
pub struct SetStickerSetThumb {
    // name Sticker set name
    name string
    // user_id User identifier of the sticker set owner
    user_id int
    // thumb A PNG image with the thumbnail, must be up to 128 kilobytes in size and have width and height exactly 100px, or a TGS animation with the thumbnail up to 32 kilobytes in size; see https://core.telegram.org/stickers#animated-sticker-requirements for animated sticker technical requirements, or a WEBM video with the thumbnail up to 32 kilobytes in size; see https://core.telegram.org/stickers#video-sticker-requirements for video sticker technical requirements. Pass a file_id as a String to send a file that already exists on the Telegram servers, pass an HTTP URL as a String for Telegram to get a file from the Internet, or upload a new one using multipart/form-data. More information on Sending Files ». Animated sticker set thumbnails can't be uploaded via HTTP URL.
    thumb string
}
// set_sticker_set_thumb - setStickerSetThumb
// Use this method to set the thumbnail of a sticker set. Animated thumbnails can be set for animated sticker sets only. Video thumbnails can be set only for video sticker sets only. Returns True on success.
pub fn (mut b Bot) set_sticker_set_thumb(params SetStickerSetThumb) !bool {
    resp := b.http_request('setStickerSetThumb', json.encode(params))!
    // '
    return return_bool(resp)
}

[params]
pub struct AnswerInlineQuery {
    // inline_query_id Unique identifier for the answered query
    inline_query_id string
    // results A JSON-serialized array of results for the inline query
    results []InlineQueryResult
    // cache_time The maximum amount of time in seconds that the result of the inline query may be cached on the server. Defaults to 300.
    cache_time int
    // is_personal Pass True if results may be cached on the server side only for the user that sent the query. By default, results may be returned to any user who sends the same query
    is_personal bool
    // next_offset Pass the offset that a client should send in the next query with the same text to receive more results. Pass an empty string if there are no more results or if you don't support pagination. Offset length can't exceed 64 bytes.
    next_offset string
    // switch_pm_text If passed, clients will display a button with specified text that switches the user to a private chat with the bot and sends the bot a start message with the parameter switch_pm_parameter
    switch_pm_text string
    // switch_pm_parameter Deep-linking parameter for the /start message sent to the bot when user presses the switch button. 1-64 characters, only A-Z, a-z, 0-9, _ and - are allowed.
    // Example: An inline bot that sends YouTube videos can ask the user to connect the bot to their YouTube account to adapt search results accordingly. To do this, it displays a 'Connect your YouTube account' button above the results, or even before showing any. The user presses the button, switches to a private chat with the bot and, in doing so, passes a start parameter that inpub structs the bot to return an OAuth link. Once done, the bot can offer a switch_inline button so that the user can easily return to the chat where they wanted to use the bot's inline capabilities.
    switch_pm_parameter string
}
// answer_inline_query - answerInlineQuery
// Use this method to send answers to an inline query. On success, True is returned.
// No more than 50 results per query are allowed.
pub fn (mut b Bot) answer_inline_query(params AnswerInlineQuery) !bool {
    resp := b.http_request('answerInlineQuery', json.encode(params))!
    // '
    return return_bool(resp)
}

[params]
pub struct AnswerWebAppQuery {
    // web_app_query_id Unique identifier for the query to be answered
    web_app_query_id string
    // result A JSON-serialized object describing the message to be sent
    result InlineQueryResult
}
// answer_web_app_query - answerWebAppQuery
// Use this method to set the result of an interaction with a Web App and send a corresponding message on behalf of the user to the chat from which the query originated. On success, a SentWebAppMessage object is returned.
pub fn (mut b Bot) answer_web_app_query(params AnswerWebAppQuery) !SentWebAppMessage {
    resp := b.http_request('answerWebAppQuery', json.encode(params))!
    // '
    return return_data[SentWebAppMessage](resp)
}

[params]
pub struct SendInvoice {
    // chat_id Unique identifier for the target chat or username of the target channel (in the format @channelusername)
    chat_id i64
    // message_thread_id Unique identifier for the target message thread (topic) of the forum; for forum supergroups only
    message_thread_id int
    // title Product name, 1-32 characters
    title string
    // description Product description, 1-255 characters
    description string
    // payload Bot-defined invoice payload, 1-128 bytes. This will not be displayed to the user, use for your internal processes.
    payload string
    // provider_token Payment provider token, obtained via @BotFather
    provider_token string
    // currency Three-letter ISO 4217 currency code, see more on currencies
    currency string
    // prices Price breakdown, a JSON-serialized list of components (e.g. product price, tax, discount, delivery cost, delivery tax, bonus, etc.)
    prices []LabeledPrice
    // max_tip_amount The maximum accepted amount for tips in the smallest units of the currency (integer, not float/double). For example, for a maximum tip of US$ 1.45 pass max_tip_amount = 145. See the exp parameter in currencies.json, it shows the number of digits past the decimal point for each currency (2 for the majority of currencies). Defaults to 0
    max_tip_amount int
    // suggested_tip_amounts A JSON-serialized array of suggested amounts of tips in the smallest units of the currency (integer, not float/double). At most 4 suggested tip amounts can be specified. The suggested tip amounts must be positive, passed in a strictly increased order and must not exceed max_tip_amount.
    suggested_tip_amounts []int
    // start_parameter Unique deep-linking parameter. If left empty, forwarded copies of the sent message will have a Pay button, allowing multiple users to pay directly from the forwarded message, using the same invoice. If non-empty, forwarded copies of the sent message will have a URL button with a deep link to the bot (instead of a Pay button), with the value used as the start parameter
    start_parameter string
    // provider_data JSON-serialized data about the invoice, which will be shared with the payment provider. A detailed description of required fields should be provided by the payment provider.
    provider_data string
    // photo_url URL of the product photo for the invoice. Can be a photo of the goods or a marketing image for a service. People like it better when they see what they are paying for.
    photo_url string
    // photo_size Photo size in bytes
    photo_size int
    // photo_width Photo width
    photo_width int
    // photo_height Photo height
    photo_height int
    // need_name Pass True if you require the user's full name to complete the order
    need_name bool
    // need_phone_number Pass True if you require the user's phone number to complete the order
    need_phone_number bool
    // need_email Pass True if you require the user's email address to complete the order
    need_email bool
    // need_shipping_address Pass True if you require the user's shipping address to complete the order
    need_shipping_address bool
    // send_phone_number_to_provider Pass True if the user's phone number should be sent to provider
    send_phone_number_to_provider bool
    // send_email_to_provider Pass True if the user's email address should be sent to provider
    send_email_to_provider bool
    // is_flexible Pass True if the final price depends on the shipping method
    is_flexible bool
    // disable_notification Sends the message silently. Users will receive a notification with no sound.
    disable_notification bool
    // protect_content Protects the contents of the sent message from forwarding and saving
    protect_content bool
    // reply_to_message_id If the message is a reply, ID of the original message
    reply_to_message_id int
    // allow_sending_without_reply Pass True if the message should be sent even if the specified replied-to message is not found
    allow_sending_without_reply bool
    // reply_markup A JSON-serialized object for an inline keyboard. If empty, one 'Pay total price' button will be shown. If not empty, the first button must be a Pay button.
    reply_markup InlineKeyboardMarkup
}
// send_invoice - sendInvoice
// Use this method to send invoices. On success, the sent Message is returned.
pub fn (mut b Bot) send_invoice(params SendInvoice) !Message {
    resp := b.http_request('sendInvoice', json.encode(params))!
    // '
    return return_data[Message](resp)
}

[params]
pub struct CreateInvoiceLink {
    // title Product name, 1-32 characters
    title string
    // description Product description, 1-255 characters
    description string
    // payload Bot-defined invoice payload, 1-128 bytes. This will not be displayed to the user, use for your internal processes.
    payload string
    // provider_token Payment provider token, obtained via BotFather
    provider_token string
    // currency Three-letter ISO 4217 currency code, see more on currencies
    currency string
    // prices Price breakdown, a JSON-serialized list of components (e.g. product price, tax, discount, delivery cost, delivery tax, bonus, etc.)
    prices []LabeledPrice
    // max_tip_amount The maximum accepted amount for tips in the smallest units of the currency (integer, not float/double). For example, for a maximum tip of US$ 1.45 pass max_tip_amount = 145. See the exp parameter in currencies.json, it shows the number of digits past the decimal point for each currency (2 for the majority of currencies). Defaults to 0
    max_tip_amount int
    // suggested_tip_amounts A JSON-serialized array of suggested amounts of tips in the smallest units of the currency (integer, not float/double). At most 4 suggested tip amounts can be specified. The suggested tip amounts must be positive, passed in a strictly increased order and must not exceed max_tip_amount.
    suggested_tip_amounts []int
    // provider_data JSON-serialized data about the invoice, which will be shared with the payment provider. A detailed description of required fields should be provided by the payment provider.
    provider_data string
    // photo_url URL of the product photo for the invoice. Can be a photo of the goods or a marketing image for a service.
    photo_url string
    // photo_size Photo size in bytes
    photo_size int
    // photo_width Photo width
    photo_width int
    // photo_height Photo height
    photo_height int
    // need_name Pass True if you require the user's full name to complete the order
    need_name bool
    // need_phone_number Pass True if you require the user's phone number to complete the order
    need_phone_number bool
    // need_email Pass True if you require the user's email address to complete the order
    need_email bool
    // need_shipping_address Pass True if you require the user's shipping address to complete the order
    need_shipping_address bool
    // send_phone_number_to_provider Pass True if the user's phone number should be sent to the provider
    send_phone_number_to_provider bool
    // send_email_to_provider Pass True if the user's email address should be sent to the provider
    send_email_to_provider bool
    // is_flexible Pass True if the final price depends on the shipping method
    is_flexible bool
}
// create_invoice_link - createInvoiceLink
// Use this method to create a link for an invoice. Returns the created invoice link as String on success.
pub fn (mut b Bot) create_invoice_link(params CreateInvoiceLink) !string {
    resp := b.http_request('createInvoiceLink', json.encode(params))!
    // '
    return return_string(resp)
}

[params]
pub struct AnswerShippingQuery {
    // shipping_query_id Unique identifier for the query to be answered
    shipping_query_id string
    // ok Pass True if delivery to the specified address is possible and False if there are any problems (for example, if delivery to the specified address is not possible)
    ok bool
    // shipping_options Required if ok is True. A JSON-serialized array of available shipping options.
    shipping_options []ShippingOption
    // error_message Required if ok is False. Error message in human readable form that explains why it is impossible to complete the order (e.g. "Sorry, delivery to your desired address is unavailable'). Telegram will display this message to the user.
    error_message string
}
// answer_shipping_query - answerShippingQuery
// If you sent an invoice requesting a shipping address and the parameter is_flexible was specified, the Bot API will send an Update with a shipping_query field to the bot. Use this method to reply to shipping queries. On success, True is returned.
pub fn (mut b Bot) answer_shipping_query(params AnswerShippingQuery) !bool {
    resp := b.http_request('answerShippingQuery', json.encode(params))!
    // '
    return return_bool(resp)
}

[params]
pub struct AnswerPreCheckoutQuery {
    // pre_checkout_query_id Unique identifier for the query to be answered
    pre_checkout_query_id string
    // ok Specify True if everything is alright (goods are available, etc.) and the bot is ready to proceed with the order. Use False if there are any problems.
    ok bool
    // error_message Required if ok is False. Error message in human readable form that explains the reason for failure to proceed with the checkout (e.g. "Sorry, somebody just bought the last of our amazing black T-shirts while you were busy filling out your payment details. Please choose a different color or garment!"). Telegram will display this message to the user.
    error_message string
}
// answer_pre_checkout_query - answerPreCheckoutQuery
// Once the user has confirmed their payment and shipping details, the Bot API sends the final confirmation in the form of an Update with the field pre_checkout_query. Use this method to respond to such pre-checkout queries. On success, True is returned. Note: The Bot API must receive an answer within 10 seconds after the pre-checkout query was sent.
pub fn (mut b Bot) answer_pre_checkout_query(params AnswerPreCheckoutQuery) !bool {
    resp := b.http_request('answerPreCheckoutQuery', json.encode(params))!
    // '
    return return_bool(resp)
}

[params]
pub struct SetPassportDataErrors {
    // user_id User identifier
    user_id int
    // errors A JSON-serialized array describing the errors
    errors []PassportElementError
}
// set_passport_data_errors - setPassportDataErrors
// Informs a user that some of the Telegram Passport elements they provided contains errors. The user will not be able to re-submit their Passport to you until the errors are fixed (the contents of the field for which you returned the error must change). Returns True on success.
pub fn (mut b Bot) set_passport_data_errors(params SetPassportDataErrors) !bool {
    resp := b.http_request('setPassportDataErrors', json.encode(params))!
    // '
    return return_bool(resp)
}

[params]
pub struct SendGame {
    // chat_id Unique identifier for the target chat
    chat_id i64
    // message_thread_id Unique identifier for the target message thread (topic) of the forum; for forum supergroups only
    message_thread_id int
    // game_short_name Short name of the game, serves as the unique identifier for the game. Set up your games via @BotFather.
    game_short_name string
    // disable_notification Sends the message silently. Users will receive a notification with no sound.
    disable_notification bool
    // protect_content Protects the contents of the sent message from forwarding and saving
    protect_content bool
    // reply_to_message_id If the message is a reply, ID of the original message
    reply_to_message_id int
    // allow_sending_without_reply Pass True if the message should be sent even if the specified replied-to message is not found
    allow_sending_without_reply bool
    // reply_markup A JSON-serialized object for an inline keyboard. If empty, one 'Play game_title' button will be shown. If not empty, the first button must launch the game.
    reply_markup InlineKeyboardMarkup
}
// send_game - sendGame
// Use this method to send a game. On success, the sent Message is returned.
pub fn (mut b Bot) send_game(params SendGame) !Message {
    resp := b.http_request('sendGame', json.encode(params))!
    // '
    return return_data[Message](resp)
}

[params]
pub struct SetGameScore {
    // user_id User identifier
    user_id int
    // score New score, must be non-negative
    score int
    // force Pass True if the high score is allowed to decrease. This can be useful when fixing mistakes or banning cheaters
    force bool
    // disable_edit_message Pass True if the game message should not be automatically edited to include the current scoreboard
    disable_edit_message bool
    // chat_id Required if inline_message_id is not specified. Unique identifier for the target chat
    chat_id i64
    // message_id Required if inline_message_id is not specified. Identifier of the sent message
    message_id int
    // inline_message_id Required if chat_id and message_id are not specified. Identifier of the inline message
    inline_message_id string
}
// set_game_score - setGameScore
// Use this method to set the score of the specified user in a game message. On success, if the message is not an inline message, the Message is returned, otherwise True is returned. Returns an error, if the new score is not greater than the user's current score in the chat and force is False.
pub fn (mut b Bot) set_game_score(params SetGameScore) !Message {
    resp := b.http_request('setGameScore', json.encode(params))!
    // '
    return return_data[Message](resp)
}

[params]
pub struct GetGameHighScores {
    // user_id Target user id
    user_id int
    // chat_id Required if inline_message_id is not specified. Unique identifier for the target chat
    chat_id i64
    // message_id Required if inline_message_id is not specified. Identifier of the sent message
    message_id int
    // inline_message_id Required if chat_id and message_id are not specified. Identifier of the inline message
    inline_message_id string
}
// get_game_high_scores - getGameHighScores
// Use this method to get data for high score tables. Will return the score of the specified user and several of their neighbors in a game. Returns an Array of GameHighScore objects.
pub fn (mut b Bot) get_game_high_scores(params GetGameHighScores) ![]GameHighScore {
    resp := b.http_request('getGameHighScores', json.encode(params))!
    // '
    return return_data[[]GameHighScore](resp)
}
