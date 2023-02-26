# module vtelegram

## Contents

- [Bot](#Bot)
  - [add_sticker_to_set](#add_sticker_to_set)
  - [answer_callback_query](#answer_callback_query)
  - [answer_inline_query](#answer_inline_query)
  - [answer_pre_checkout_query](#answer_pre_checkout_query)
  - [answer_shipping_query](#answer_shipping_query)
  - [answer_web_app_query](#answer_web_app_query)
  - [approve_chat_join_request](#approve_chat_join_request)
  - [ban_chat_member](#ban_chat_member)
  - [ban_chat_sender_chat](#ban_chat_sender_chat)
  - [close](#close)
  - [close_forum_topic](#close_forum_topic)
  - [close_general_forum_topic](#close_general_forum_topic)
  - [copy_message](#copy_message)
  - [create_chat_invite_link](#create_chat_invite_link)
  - [create_forum_topic](#create_forum_topic)
  - [create_invoice_link](#create_invoice_link)
  - [create_new_sticker_set](#create_new_sticker_set)
  - [decline_chat_join_request](#decline_chat_join_request)
  - [delete_chat_photo](#delete_chat_photo)
  - [delete_chat_sticker_set](#delete_chat_sticker_set)
  - [delete_forum_topic](#delete_forum_topic)
  - [delete_message](#delete_message)
  - [delete_my_commands](#delete_my_commands)
  - [delete_sticker_from_set](#delete_sticker_from_set)
  - [delete_webhook](#delete_webhook)
  - [edit_chat_invite_link](#edit_chat_invite_link)
  - [edit_forum_topic](#edit_forum_topic)
  - [edit_general_forum_topic](#edit_general_forum_topic)
  - [edit_message_caption](#edit_message_caption)
  - [edit_message_live_location](#edit_message_live_location)
  - [edit_message_media](#edit_message_media)
  - [edit_message_reply_markup](#edit_message_reply_markup)
  - [edit_message_text](#edit_message_text)
  - [export_chat_invite_link](#export_chat_invite_link)
  - [forward_message](#forward_message)
  - [get_chat](#get_chat)
  - [get_chat_administrators](#get_chat_administrators)
  - [get_chat_member](#get_chat_member)
  - [get_chat_member_count](#get_chat_member_count)
  - [get_chat_menu_button](#get_chat_menu_button)
  - [get_custom_emoji_stickers](#get_custom_emoji_stickers)
  - [get_file](#get_file)
  - [get_forum_topic_icon_stickers](#get_forum_topic_icon_stickers)
  - [get_game_high_scores](#get_game_high_scores)
  - [get_me](#get_me)
  - [get_my_commands](#get_my_commands)
  - [get_my_default_administrator_rights](#get_my_default_administrator_rights)
  - [get_sticker_set](#get_sticker_set)
  - [get_updates](#get_updates)
  - [get_user_profile_photos](#get_user_profile_photos)
  - [get_webhook_info](#get_webhook_info)
  - [hide_general_forum_topic](#hide_general_forum_topic)
  - [http_request](#http_request)
  - [leave_chat](#leave_chat)
  - [log_out](#log_out)
  - [pin_chat_message](#pin_chat_message)
  - [promote_chat_member](#promote_chat_member)
  - [reopen_forum_topic](#reopen_forum_topic)
  - [reopen_general_forum_topic](#reopen_general_forum_topic)
  - [restrict_chat_member](#restrict_chat_member)
  - [revoke_chat_invite_link](#revoke_chat_invite_link)
  - [send_animation](#send_animation)
  - [send_audio](#send_audio)
  - [send_chat_action](#send_chat_action)
  - [send_contact](#send_contact)
  - [send_dice](#send_dice)
  - [send_document](#send_document)
  - [send_game](#send_game)
  - [send_invoice](#send_invoice)
  - [send_location](#send_location)
  - [send_media_group](#send_media_group)
  - [send_message](#send_message)
  - [send_photo](#send_photo)
  - [send_poll](#send_poll)
  - [send_sticker](#send_sticker)
  - [send_venue](#send_venue)
  - [send_video](#send_video)
  - [send_video_note](#send_video_note)
  - [send_voice](#send_voice)
  - [set_chat_administrator_custom_title](#set_chat_administrator_custom_title)
  - [set_chat_description](#set_chat_description)
  - [set_chat_menu_button](#set_chat_menu_button)
  - [set_chat_permissions](#set_chat_permissions)
  - [set_chat_photo](#set_chat_photo)
  - [set_chat_sticker_set](#set_chat_sticker_set)
  - [set_chat_title](#set_chat_title)
  - [set_game_score](#set_game_score)
  - [set_my_commands](#set_my_commands)
  - [set_my_default_administrator_rights](#set_my_default_administrator_rights)
  - [set_passport_data_errors](#set_passport_data_errors)
  - [set_sticker_position_in_set](#set_sticker_position_in_set)
  - [set_sticker_set_thumb](#set_sticker_set_thumb)
  - [set_webhook](#set_webhook)
  - [stop_message_live_location](#stop_message_live_location)
  - [stop_poll](#stop_poll)
  - [unban_chat_member](#unban_chat_member)
  - [unban_chat_sender_chat](#unban_chat_sender_chat)
  - [unhide_general_forum_topic](#unhide_general_forum_topic)
  - [unpin_all_chat_messages](#unpin_all_chat_messages)
  - [unpin_all_forum_topic_messages](#unpin_all_forum_topic_messages)
  - [unpin_chat_message](#unpin_chat_message)
  - [upload_sticker_file](#upload_sticker_file)
- [Constants](#Constants)
- [clear_middleware_data](#clear_middleware_data)
- [delete_middleware_data](#delete_middleware_data)
- [get_middleware_data](#get_middleware_data)
- [start_polling](#start_polling)
- [AddStickerToSet](#AddStickerToSet)
- [Animation](#Animation)
- [AnswerCallbackQuery](#AnswerCallbackQuery)
- [AnswerInlineQuery](#AnswerInlineQuery)
- [AnswerPreCheckoutQuery](#AnswerPreCheckoutQuery)
- [AnswerShippingQuery](#AnswerShippingQuery)
- [AnswerWebAppQuery](#AnswerWebAppQuery)
- [ApproveChatJoinRequest](#ApproveChatJoinRequest)
- [Audio](#Audio)
- [BanChatMember](#BanChatMember)
- [BanChatSenderChat](#BanChatSenderChat)
- [BotCommand](#BotCommand)
- [BotCommandScopeAllChatAdministrators](#BotCommandScopeAllChatAdministrators)
- [BotCommandScopeAllGroupChats](#BotCommandScopeAllGroupChats)
- [BotCommandScopeAllPrivateChats](#BotCommandScopeAllPrivateChats)
- [BotCommandScopeChat](#BotCommandScopeChat)
- [BotCommandScopeChatAdministrators](#BotCommandScopeChatAdministrators)
- [BotCommandScopeChatMember](#BotCommandScopeChatMember)
- [BotCommandScopeDefault](#BotCommandScopeDefault)
- [CallbackGame](#CallbackGame)
- [CallbackQuery](#CallbackQuery)
- [Chat](#Chat)
- [ChatAdministratorRights](#ChatAdministratorRights)
- [ChatInviteLink](#ChatInviteLink)
- [ChatJoinRequest](#ChatJoinRequest)
- [ChatLocation](#ChatLocation)
- [ChatMemberAdministrator](#ChatMemberAdministrator)
- [ChatMemberBanned](#ChatMemberBanned)
- [ChatMemberLeft](#ChatMemberLeft)
- [ChatMemberMember](#ChatMemberMember)
- [ChatMemberOwner](#ChatMemberOwner)
- [ChatMemberRestricted](#ChatMemberRestricted)
- [ChatMemberUpdated](#ChatMemberUpdated)
- [ChatPermissions](#ChatPermissions)
- [ChatPhoto](#ChatPhoto)
- [ChatShared](#ChatShared)
- [ChosenInlineResult](#ChosenInlineResult)
- [Close](#Close)
- [CloseForumTopic](#CloseForumTopic)
- [CloseGeneralForumTopic](#CloseGeneralForumTopic)
- [Contact](#Contact)
- [CopyMessage](#CopyMessage)
- [CreateChatInviteLink](#CreateChatInviteLink)
- [CreateForumTopic](#CreateForumTopic)
- [CreateInvoiceLink](#CreateInvoiceLink)
- [CreateNewStickerSet](#CreateNewStickerSet)
- [DeclineChatJoinRequest](#DeclineChatJoinRequest)
- [DeleteChatPhoto](#DeleteChatPhoto)
- [DeleteChatStickerSet](#DeleteChatStickerSet)
- [DeleteForumTopic](#DeleteForumTopic)
- [DeleteMessage](#DeleteMessage)
- [DeleteMyCommands](#DeleteMyCommands)
- [DeleteStickerFromSet](#DeleteStickerFromSet)
- [DeleteWebhook](#DeleteWebhook)
- [Dice](#Dice)
- [Document](#Document)
- [EditChatInviteLink](#EditChatInviteLink)
- [EditForumTopic](#EditForumTopic)
- [EditGeneralForumTopic](#EditGeneralForumTopic)
- [EditMessageCaption](#EditMessageCaption)
- [EditMessageLiveLocation](#EditMessageLiveLocation)
- [EditMessageMedia](#EditMessageMedia)
- [EditMessageReplyMarkup](#EditMessageReplyMarkup)
- [EditMessageText](#EditMessageText)
- [EncryptedCredentials](#EncryptedCredentials)
- [EncryptedPassportElement](#EncryptedPassportElement)
- [ExportChatInviteLink](#ExportChatInviteLink)
- [File](#File)
- [ForceReply](#ForceReply)
- [ForumTopic](#ForumTopic)
- [ForumTopicClosed](#ForumTopicClosed)
- [ForumTopicCreated](#ForumTopicCreated)
- [ForumTopicEdited](#ForumTopicEdited)
- [ForumTopicReopened](#ForumTopicReopened)
- [ForwardMessage](#ForwardMessage)
- [Game](#Game)
- [GameHighScore](#GameHighScore)
- [GeneralForumTopicHidden](#GeneralForumTopicHidden)
- [GeneralForumTopicUnhidden](#GeneralForumTopicUnhidden)
- [GetChat](#GetChat)
- [GetChatAdministrators](#GetChatAdministrators)
- [GetChatMember](#GetChatMember)
- [GetChatMemberCount](#GetChatMemberCount)
- [GetChatMenuButton](#GetChatMenuButton)
- [GetCustomEmojiStickers](#GetCustomEmojiStickers)
- [GetFile](#GetFile)
- [GetForumTopicIconStickers](#GetForumTopicIconStickers)
- [GetGameHighScores](#GetGameHighScores)
- [GetMe](#GetMe)
- [GetMyCommands](#GetMyCommands)
- [GetMyDefaultAdministratorRights](#GetMyDefaultAdministratorRights)
- [GetStickerSet](#GetStickerSet)
- [GetUpdates](#GetUpdates)
- [GetUserProfilePhotos](#GetUserProfilePhotos)
- [GetWebhookInfo](#GetWebhookInfo)
- [HideGeneralForumTopic](#HideGeneralForumTopic)
- [InlineKeyboardButton](#InlineKeyboardButton)
- [InlineKeyboardMarkup](#InlineKeyboardMarkup)
- [InlineQuery](#InlineQuery)
- [InlineQueryResultArticle](#InlineQueryResultArticle)
- [InlineQueryResultAudio](#InlineQueryResultAudio)
- [InlineQueryResultCachedAudio](#InlineQueryResultCachedAudio)
- [InlineQueryResultCachedDocument](#InlineQueryResultCachedDocument)
- [InlineQueryResultCachedGif](#InlineQueryResultCachedGif)
- [InlineQueryResultCachedMpeg4Gif](#InlineQueryResultCachedMpeg4Gif)
- [InlineQueryResultCachedPhoto](#InlineQueryResultCachedPhoto)
- [InlineQueryResultCachedSticker](#InlineQueryResultCachedSticker)
- [InlineQueryResultCachedVideo](#InlineQueryResultCachedVideo)
- [InlineQueryResultCachedVoice](#InlineQueryResultCachedVoice)
- [InlineQueryResultContact](#InlineQueryResultContact)
- [InlineQueryResultDocument](#InlineQueryResultDocument)
- [InlineQueryResultGame](#InlineQueryResultGame)
- [InlineQueryResultGif](#InlineQueryResultGif)
- [InlineQueryResultLocation](#InlineQueryResultLocation)
- [InlineQueryResultMpeg4Gif](#InlineQueryResultMpeg4Gif)
- [InlineQueryResultPhoto](#InlineQueryResultPhoto)
- [InlineQueryResultVenue](#InlineQueryResultVenue)
- [InlineQueryResultVideo](#InlineQueryResultVideo)
- [InlineQueryResultVoice](#InlineQueryResultVoice)
- [InputContactMessageContent](#InputContactMessageContent)
- [InputFile](#InputFile)
- [InputInvoiceMessageContent](#InputInvoiceMessageContent)
- [InputLocationMessageContent](#InputLocationMessageContent)
- [InputMedia](#InputMedia)
- [InputMediaAnimation](#InputMediaAnimation)
- [InputMediaAudio](#InputMediaAudio)
- [InputMediaDocument](#InputMediaDocument)
- [InputMediaPhoto](#InputMediaPhoto)
- [InputMediaVideo](#InputMediaVideo)
- [InputTextMessageContent](#InputTextMessageContent)
- [InputVenueMessageContent](#InputVenueMessageContent)
- [Invoice](#Invoice)
- [KeyboardButton](#KeyboardButton)
- [KeyboardButtonExt](#KeyboardButtonExt)
- [KeyboardButtonPollType](#KeyboardButtonPollType)
- [KeyboardButtonRequestChat](#KeyboardButtonRequestChat)
- [KeyboardButtonRequestUser](#KeyboardButtonRequestUser)
- [LabeledPrice](#LabeledPrice)
- [LeaveChat](#LeaveChat)
- [Location](#Location)
- [LoginUrl](#LoginUrl)
- [LogOut](#LogOut)
- [MaskPosition](#MaskPosition)
- [MenuButtonCommands](#MenuButtonCommands)
- [MenuButtonDefault](#MenuButtonDefault)
- [MenuButtonWebApp](#MenuButtonWebApp)
- [Message](#Message)
  - [delete](#delete)
  - [edit](#edit)
  - [reply](#reply)
- [MessageAutoDeleteTimerChanged](#MessageAutoDeleteTimerChanged)
- [MessageEntity](#MessageEntity)
- [MessageId](#MessageId)
- [OrderInfo](#OrderInfo)
- [PassportData](#PassportData)
- [PassportElementErrorDataField](#PassportElementErrorDataField)
- [PassportElementErrorFile](#PassportElementErrorFile)
- [PassportElementErrorFiles](#PassportElementErrorFiles)
- [PassportElementErrorFrontSide](#PassportElementErrorFrontSide)
- [PassportElementErrorReverseSide](#PassportElementErrorReverseSide)
- [PassportElementErrorSelfie](#PassportElementErrorSelfie)
- [PassportElementErrorTranslationFile](#PassportElementErrorTranslationFile)
- [PassportElementErrorTranslationFiles](#PassportElementErrorTranslationFiles)
- [PassportElementErrorUnspecified](#PassportElementErrorUnspecified)
- [PassportFile](#PassportFile)
- [PhotoSize](#PhotoSize)
- [PinChatMessage](#PinChatMessage)
- [Poll](#Poll)
- [PollAnswer](#PollAnswer)
- [PollingConfig](#PollingConfig)
- [PollOption](#PollOption)
- [PreCheckoutQuery](#PreCheckoutQuery)
- [PromoteChatMember](#PromoteChatMember)
- [ProximityAlertTriggered](#ProximityAlertTriggered)
- [Regular](#Regular)
- [ReopenForumTopic](#ReopenForumTopic)
- [ReopenGeneralForumTopic](#ReopenGeneralForumTopic)
- [ReplyKeyboardMarkup](#ReplyKeyboardMarkup)
- [ReplyKeyboardMarkupExt](#ReplyKeyboardMarkupExt)
- [ReplyKeyboardRemove](#ReplyKeyboardRemove)
- [ResponseNotOK](#ResponseNotOK)
- [ResponseOK](#ResponseOK)
- [ResponseParameters](#ResponseParameters)
- [RestrictChatMember](#RestrictChatMember)
- [Result](#Result)
- [RevokeChatInviteLink](#RevokeChatInviteLink)
- [SendAnimation](#SendAnimation)
- [SendAudio](#SendAudio)
- [SendChatAction](#SendChatAction)
- [SendContact](#SendContact)
- [SendDice](#SendDice)
- [SendDocument](#SendDocument)
- [SendGame](#SendGame)
- [SendInvoice](#SendInvoice)
- [SendLocation](#SendLocation)
- [SendMediaGroup](#SendMediaGroup)
- [SendMessage](#SendMessage)
- [SendPhoto](#SendPhoto)
- [SendPoll](#SendPoll)
- [SendSticker](#SendSticker)
- [SendVenue](#SendVenue)
- [SendVideo](#SendVideo)
- [SendVideoNote](#SendVideoNote)
- [SendVoice](#SendVoice)
- [SentWebAppMessage](#SentWebAppMessage)
- [SetChatAdministratorCustomTitle](#SetChatAdministratorCustomTitle)
- [SetChatDescription](#SetChatDescription)
- [SetChatMenuButton](#SetChatMenuButton)
- [SetChatPermissions](#SetChatPermissions)
- [SetChatPhoto](#SetChatPhoto)
- [SetChatStickerSet](#SetChatStickerSet)
- [SetChatTitle](#SetChatTitle)
- [SetGameScore](#SetGameScore)
- [SetMyCommands](#SetMyCommands)
- [SetMyDefaultAdministratorRights](#SetMyDefaultAdministratorRights)
- [SetPassportDataErrors](#SetPassportDataErrors)
- [SetStickerPositionInSet](#SetStickerPositionInSet)
- [SetStickerSetThumb](#SetStickerSetThumb)
- [SetWebhook](#SetWebhook)
- [ShippingAddress](#ShippingAddress)
- [ShippingOption](#ShippingOption)
- [ShippingQuery](#ShippingQuery)
- [Sticker](#Sticker)
- [StickerSet](#StickerSet)
- [StopMessageLiveLocation](#StopMessageLiveLocation)
- [StopPoll](#StopPoll)
- [SuccessfulPayment](#SuccessfulPayment)
- [UnbanChatMember](#UnbanChatMember)
- [UnbanChatSenderChat](#UnbanChatSenderChat)
- [UnhideGeneralForumTopic](#UnhideGeneralForumTopic)
- [UnpinAllChatMessages](#UnpinAllChatMessages)
- [UnpinAllForumTopicMessages](#UnpinAllForumTopicMessages)
- [UnpinChatMessage](#UnpinChatMessage)
- [Update](#Update)
- [UploadStickerFile](#UploadStickerFile)
- [User](#User)
- [UserProfilePhotos](#UserProfilePhotos)
- [UserShared](#UserShared)
- [Venue](#Venue)
- [Video](#Video)
- [VideoChatEnded](#VideoChatEnded)
- [VideoChatParticipantsInvited](#VideoChatParticipantsInvited)
- [VideoChatScheduled](#VideoChatScheduled)
- [VideoChatStarted](#VideoChatStarted)
- [VideoNote](#VideoNote)
- [Voice](#Voice)
- [WebAppData](#WebAppData)
- [WebAppInfo](#WebAppInfo)
- [WebhookInfo](#WebhookInfo)
- [WriteAccessAllowed](#WriteAccessAllowed)

## Constants

```v
const (
	endpoint = 'https://api.telegram.org/bot'
)
```

[[Return to contents]](#Contents)

## clear_middleware_data

```v
fn clear_middleware_data[T](mut middleware T)
```

free_middleware_data function for data manual delete, if stash_data == false (default) then this function is called every update handling circle

[[Return to contents]](#Contents)

## delete_middleware_data

```v
fn delete_middleware_data[T](mut middleware T, key string)
```

delete_middleware_data delete one key from data

[[Return to contents]](#Contents)

## get_middleware_data

```v
fn get_middleware_data[T](middleware &T) map[string]string
```

get_middleware_data == middleware.data

[[Return to contents]](#Contents)

## start_polling

```v
fn start_polling[T, R](mut bot T, argument_arr R)
```

[[Return to contents]](#Contents)

## AddStickerToSet

```v
struct AddStickerToSet {
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
```

[[Return to contents]](#Contents)

## Animation

```v
struct Animation {
pub:
	// file_id Identifier for this file, which can be used to download or reuse the file
	file_id string
	// file_unique_id Unique identifier for this file, which is supposed to be the same over time and for different bots. Can't be used to download or reuse the file.
	file_unique_id string
	// width Video width as defined by sender
	width int
	// height Video height as defined by sender
	height int
	// duration Duration of the video in seconds as defined by sender
	duration int
	// thumb Optional. Animation thumbnail as defined by sender
	thumb PhotoSize
	// file_name Optional. Original animation filename as defined by sender
	file_name string
	// mime_type Optional. MIME type of the file as defined by sender
	mime_type string
	// file_size Optional. File size in bytes. It can be bigger than 2^31 and some programming languages may have difficulty/silent defects in interpreting it. But it has at most 52 significant bits, so a signed 64-bit integer or double-precision float type are safe for storing this value.
	file_size i64
}
```

Animation This object represents an animation file (GIF or H.264/MPEG-4 AVC video without sound).

[[Return to contents]](#Contents)

## AnswerCallbackQuery

```v
struct AnswerCallbackQuery {
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
```

[[Return to contents]](#Contents)

## AnswerInlineQuery

```v
struct AnswerInlineQuery {
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
```

[[Return to contents]](#Contents)

## AnswerPreCheckoutQuery

```v
struct AnswerPreCheckoutQuery {
	// pre_checkout_query_id Unique identifier for the query to be answered
	pre_checkout_query_id string
	// ok Specify True if everything is alright (goods are available, etc.) and the bot is ready to proceed with the order. Use False if there are any problems.
	ok bool
	// error_message Required if ok is False. Error message in human readable form that explains the reason for failure to proceed with the checkout (e.g. "Sorry, somebody just bought the last of our amazing black T-shirts while you were busy filling out your payment details. Please choose a different color or garment!"). Telegram will display this message to the user.
	error_message string
}
```

[[Return to contents]](#Contents)

## AnswerShippingQuery

```v
struct AnswerShippingQuery {
	// shipping_query_id Unique identifier for the query to be answered
	shipping_query_id string
	// ok Pass True if delivery to the specified address is possible and False if there are any problems (for example, if delivery to the specified address is not possible)
	ok bool
	// shipping_options Required if ok is True. A JSON-serialized array of available shipping options.
	shipping_options []ShippingOption
	// error_message Required if ok is False. Error message in human readable form that explains why it is impossible to complete the order (e.g. "Sorry, delivery to your desired address is unavailable'). Telegram will display this message to the user.
	error_message string
}
```

[[Return to contents]](#Contents)

## AnswerWebAppQuery

```v
struct AnswerWebAppQuery {
	// web_app_query_id Unique identifier for the query to be answered
	web_app_query_id string
	// result A JSON-serialized object describing the message to be sent
	result InlineQueryResult
}
```

[[Return to contents]](#Contents)

## ApproveChatJoinRequest

```v
struct ApproveChatJoinRequest {
	// chat_id Unique identifier for the target chat or username of the target channel (in the format @channelusername)
	chat_id i64
	// user_id Unique identifier of the target user
	user_id int
}
```

[[Return to contents]](#Contents)

## Audio

```v
struct Audio {
pub:
	// file_id Identifier for this file, which can be used to download or reuse the file
	file_id string
	// file_unique_id Unique identifier for this file, which is supposed to be the same over time and for different bots. Can't be used to download or reuse the file.
	file_unique_id string
	// duration Duration of the audio in seconds as defined by sender
	duration int
	// performer Optional. Performer of the audio as defined by sender or by audio tags
	performer string
	// title Optional. Title of the audio as defined by sender or by audio tags
	title string
	// file_name Optional. Original filename as defined by sender
	file_name string
	// mime_type Optional. MIME type of the file as defined by sender
	mime_type string
	// file_size Optional. File size in bytes. It can be bigger than 2^31 and some programming languages may have difficulty/silent defects in interpreting it. But it has at most 52 significant bits, so a signed 64-bit integer or double-precision float type are safe for storing this value.
	file_size i64
	// thumb Optional. Thumbnail of the album cover to which the music file belongs
	thumb PhotoSize
}
```

Audio This object represents an audio file to be treated as music by the Telegram clients.

[[Return to contents]](#Contents)

## BanChatMember

```v
struct BanChatMember {
	// chat_id Unique identifier for the target group or username of the target supergroup or channel (in the format @channelusername)
	chat_id i64
	// user_id Unique identifier of the target user
	user_id int
	// until_date Date when the user will be unbanned, unix time. If user is banned for more than 366 days or less than 30 seconds from the current time they are considered to be banned forever. Applied for supergroups and channels only.
	until_date int
	// revoke_messages Pass True to delete all messages from the chat for the user that is being removed. If False, the user will be able to see messages in the group that were sent before the user was removed. Always True for supergroups and channels.
	revoke_messages bool
}
```

[[Return to contents]](#Contents)

## BanChatSenderChat

```v
struct BanChatSenderChat {
	// chat_id Unique identifier for the target chat or username of the target channel (in the format @channelusername)
	chat_id i64
	// sender_chat_id Unique identifier of the target sender chat
	sender_chat_id int
}
```

[[Return to contents]](#Contents)

## Bot

```v
struct Bot {
	token string
pub mut:
	offset int
	log    log.Log
}
```

[[Return to contents]](#Contents)

## add_sticker_to_set

```v
fn (mut b Bot) add_sticker_to_set(params AddStickerToSet) !bool
```

add_sticker_to_set - addStickerToSet
Use this method to add a new sticker to a set created by the bot. You must use exactly one of the fields png_sticker, tgs_sticker, or webm_sticker. Animated stickers can be added to animated sticker sets and only to them. Animated sticker sets can have up to 50 stickers. Static sticker sets can have up to 120 stickers. Returns True on success.

[[Return to contents]](#Contents)

## answer_callback_query

```v
fn (mut b Bot) answer_callback_query(params AnswerCallbackQuery) !bool
```

answer_callback_query - answerCallbackQuery
Use this method to send answers to callback queries sent from inline keyboards. The answer will be displayed to the user as a notification at the top of the chat screen or as an alert. On success, True is returned.

[[Return to contents]](#Contents)

## answer_inline_query

```v
fn (mut b Bot) answer_inline_query(params AnswerInlineQuery) !bool
```

answer_inline_query - answerInlineQuery
Use this method to send answers to an inline query. On success, True is returned.  
No more than 50 results per query are allowed.

[[Return to contents]](#Contents)

## answer_pre_checkout_query

```v
fn (mut b Bot) answer_pre_checkout_query(params AnswerPreCheckoutQuery) !bool
```

answer_pre_checkout_query - answerPreCheckoutQuery
Once the user has confirmed their payment and shipping details, the Bot API sends the final confirmation in the form of an Update with the field pre_checkout_query. Use this method to respond to such pre-checkout queries. On success, True is returned. Note: The Bot API must receive an answer within 10 seconds after the pre-checkout query was sent.

[[Return to contents]](#Contents)

## answer_shipping_query

```v
fn (mut b Bot) answer_shipping_query(params AnswerShippingQuery) !bool
```

answer_shipping_query - answerShippingQuery
If you sent an invoice requesting a shipping address and the parameter is_flexible was specified, the Bot API will send an Update with a shipping_query field to the bot. Use this method to reply to shipping queries. On success, True is returned.

[[Return to contents]](#Contents)

## answer_web_app_query

```v
fn (mut b Bot) answer_web_app_query(params AnswerWebAppQuery) !SentWebAppMessage
```

answer_web_app_query - answerWebAppQuery
Use this method to set the result of an interaction with a Web App and send a corresponding message on behalf of the user to the chat from which the query originated. On success, a SentWebAppMessage object is returned.

[[Return to contents]](#Contents)

## approve_chat_join_request

```v
fn (mut b Bot) approve_chat_join_request(params ApproveChatJoinRequest) !bool
```

approve_chat_join_request - approveChatJoinRequest
Use this method to approve a chat join request. The bot must be an administrator in the chat for this to work and must have the can_invite_users administrator right. Returns True on success.

[[Return to contents]](#Contents)

## ban_chat_member

```v
fn (mut b Bot) ban_chat_member(params BanChatMember) !bool
```

ban_chat_member - banChatMember
Use this method to ban a user in a group, a supergroup or a channel. In the case of supergroups and channels, the user will not be able to return to the chat on their own using invite links, etc., unless unbanned first. The bot must be an administrator in the chat for this to work and must have the appropriate administrator rights. Returns True on success.

[[Return to contents]](#Contents)

## ban_chat_sender_chat

```v
fn (mut b Bot) ban_chat_sender_chat(params BanChatSenderChat) !bool
```

ban_chat_sender_chat - banChatSenderChat
Use this method to ban a channel chat in a supergroup or a channel. Until the chat is unbanned, the owner of the banned chat won't be able to send messages on behalf of any of their channels. The bot must be an administrator in the supergroup or channel for this to work and must have the appropriate administrator rights. Returns True on success.

[[Return to contents]](#Contents)

## close

```v
fn (mut b Bot) close(params Close) !bool
```

close - close
Use this method to close the bot instance before moving it from one local server to another. You need to delete the webhook before calling this method to ensure that the bot isn't launched again after server restart. The method will return error 429 in the first 10 minutes after the bot is launched. Returns True on success. Requires no parameters.

[[Return to contents]](#Contents)

## close_forum_topic

```v
fn (mut b Bot) close_forum_topic(params CloseForumTopic) !bool
```

close_forum_topic - closeForumTopic
Use this method to close an open topic in a forum supergroup chat. The bot must be an administrator in the chat for this to work and must have the can_manage_topics administrator rights, unless it is the creator of the topic. Returns True on success.

[[Return to contents]](#Contents)

## close_general_forum_topic

```v
fn (mut b Bot) close_general_forum_topic(params CloseGeneralForumTopic) !bool
```

close_general_forum_topic - closeGeneralForumTopic
Use this method to close an open 'General' topic in a forum supergroup chat. The bot must be an administrator in the chat for this to work and must have the can_manage_topics administrator rights. Returns True on success.

[[Return to contents]](#Contents)

## copy_message

```v
fn (mut b Bot) copy_message(params CopyMessage) !MessageId
```

copy_message - copyMessage
Use this method to copy messages of any kind. Service messages and invoice messages can't be copied. A quiz poll can be copied only if the value of the field correct_option_id is known to the bot. The method is analogous to the method forwardMessage, but the copied message doesn't have a link to the original message. Returns the MessageId of the sent message on success.

[[Return to contents]](#Contents)

## create_chat_invite_link

```v
fn (mut b Bot) create_chat_invite_link(params CreateChatInviteLink) !ChatInviteLink
```

create_chat_invite_link - createChatInviteLink
Use this method to create an additional invite link for a chat. The bot must be an administrator in the chat for this to work and must have the appropriate administrator rights. The link can be revoked using the method revokeChatInviteLink. Returns the new invite link as ChatInviteLink object.

[[Return to contents]](#Contents)

## create_forum_topic

```v
fn (mut b Bot) create_forum_topic(params CreateForumTopic) !ForumTopic
```

create_forum_topic - createForumTopic
Use this method to create a topic in a forum supergroup chat. The bot must be an administrator in the chat for this to work and must have the can_manage_topics administrator rights. Returns information about the created topic as a ForumTopic object.

[[Return to contents]](#Contents)

## create_invoice_link

```v
fn (mut b Bot) create_invoice_link(params CreateInvoiceLink) !string
```

create_invoice_link - createInvoiceLink
Use this method to create a link for an invoice. Returns the created invoice link as String on success.

[[Return to contents]](#Contents)

## create_new_sticker_set

```v
fn (mut b Bot) create_new_sticker_set(params CreateNewStickerSet) !bool
```

create_new_sticker_set - createNewStickerSet
Use this method to create a new sticker set owned by a user. The bot will be able to edit the sticker set thus created. You must use exactly one of the fields png_sticker, tgs_sticker, or webm_sticker. Returns True on success.

[[Return to contents]](#Contents)

## decline_chat_join_request

```v
fn (mut b Bot) decline_chat_join_request(params DeclineChatJoinRequest) !bool
```

decline_chat_join_request - declineChatJoinRequest
Use this method to decline a chat join request. The bot must be an administrator in the chat for this to work and must have the can_invite_users administrator right. Returns True on success.

[[Return to contents]](#Contents)

## delete_chat_photo

```v
fn (mut b Bot) delete_chat_photo(params DeleteChatPhoto) !bool
```

delete_chat_photo - deleteChatPhoto
Use this method to delete a chat photo. Photos can't be changed for private chats. The bot must be an administrator in the chat for this to work and must have the appropriate administrator rights. Returns True on success.

[[Return to contents]](#Contents)

## delete_chat_sticker_set

```v
fn (mut b Bot) delete_chat_sticker_set(params DeleteChatStickerSet) !bool
```

delete_chat_sticker_set - deleteChatStickerSet
Use this method to delete a group sticker set from a supergroup. The bot must be an administrator in the chat for this to work and must have the appropriate administrator rights. Use the field can_set_sticker_set optionally returned in getChat requests to check if the bot can use this method. Returns True on success.

[[Return to contents]](#Contents)

## delete_forum_topic

```v
fn (mut b Bot) delete_forum_topic(params DeleteForumTopic) !bool
```

delete_forum_topic - deleteForumTopic
Use this method to delete a forum topic along with all its messages in a forum supergroup chat. The bot must be an administrator in the chat for this to work and must have the can_delete_messages administrator rights. Returns True on success.

[[Return to contents]](#Contents)

## delete_message

```v
fn (mut b Bot) delete_message(params DeleteMessage) !bool
```

delete_message - deleteMessage Use this method to delete a message, including service messages, with the following limitations:

- A message can only be deleted if it was sent less than 48 hours ago.
- Service messages about a supergroup, channel, or forum topic creation can't be deleted.
- A dice message in a private chat can only be deleted if it was sent more than 24 hours ago.
- Bots can delete outgoing messages in private chats, groups, and supergroups.
- Bots can delete incoming messages in private chats.
- Bots granted can_post_messages permissions can delete outgoing messages in channels.
- If the bot is an administrator of a group, it can delete any message there.
- If the bot has can_delete_messages permission in a supergroup or a channel, it can delete any message there.
  Returns True on success.

[[Return to contents]](#Contents)

## delete_my_commands

```v
fn (mut b Bot) delete_my_commands(params DeleteMyCommands) !bool
```

delete_my_commands - deleteMyCommands
Use this method to delete the list of the bot's commands for the given scope and user language. After deletion, higher level commands will be shown to affected users. Returns True on success.

[[Return to contents]](#Contents)

## delete_sticker_from_set

```v
fn (mut b Bot) delete_sticker_from_set(params DeleteStickerFromSet) !bool
```

delete_sticker_from_set - deleteStickerFromSet
Use this method to delete a sticker from a set created by the bot. Returns True on success.

[[Return to contents]](#Contents)

## delete_webhook

```v
fn (mut b Bot) delete_webhook(params DeleteWebhook) !bool
```

delete_webhook - deleteWebhook
Use this method to remove webhook integration if you decide to switch back to getUpdates. Returns True on success.

[[Return to contents]](#Contents)

## edit_chat_invite_link

```v
fn (mut b Bot) edit_chat_invite_link(params EditChatInviteLink) !ChatInviteLink
```

edit_chat_invite_link - editChatInviteLink
Use this method to edit a non-primary invite link created by the bot. The bot must be an administrator in the chat for this to work and must have the appropriate administrator rights. Returns the edited invite link as a ChatInviteLink object.

[[Return to contents]](#Contents)

## edit_forum_topic

```v
fn (mut b Bot) edit_forum_topic(params EditForumTopic) !bool
```

edit_forum_topic - editForumTopic
Use this method to edit name and icon of a topic in a forum supergroup chat. The bot must be an administrator in the chat for this to work and must have can_manage_topics administrator rights, unless it is the creator of the topic. Returns True on success.

[[Return to contents]](#Contents)

## edit_general_forum_topic

```v
fn (mut b Bot) edit_general_forum_topic(params EditGeneralForumTopic) !bool
```

edit_general_forum_topic - editGeneralForumTopic
Use this method to edit the name of the 'General' topic in a forum supergroup chat. The bot must be an administrator in the chat for this to work and must have can_manage_topics administrator rights. Returns True on success.

[[Return to contents]](#Contents)

## edit_message_caption

```v
fn (mut b Bot) edit_message_caption(params EditMessageCaption) !Message
```

edit_message_caption - editMessageCaption
Use this method to edit captions of messages. On success, if the edited message is not an inline message, the edited Message is returned, otherwise True is returned.

[[Return to contents]](#Contents)

## edit_message_live_location

```v
fn (mut b Bot) edit_message_live_location(params EditMessageLiveLocation) !Message
```

edit_message_live_location - editMessageLiveLocation
Use this method to edit live location messages. A location can be edited until its live_period expires or editing is explicitly disabled by a call to stopMessageLiveLocation. On success, if the edited message is not an inline message, the edited Message is returned, otherwise True is returned.

[[Return to contents]](#Contents)

## edit_message_media

```v
fn (mut b Bot) edit_message_media(params EditMessageMedia) !Message
```

edit_message_media - editMessageMedia
Use this method to edit animation, audio, document, photo, or video messages. If a message is part of a message album, then it can be edited only to an audio for audio albums, only to a document for document albums and to a photo or a video otherwise. When an inline message is edited, a new file can't be uploaded; use a previously uploaded file via its file_id or specify a URL. On success, if the edited message is not an inline message, the edited Message is returned, otherwise True is returned.

[[Return to contents]](#Contents)

## edit_message_reply_markup

```v
fn (mut b Bot) edit_message_reply_markup(params EditMessageReplyMarkup) !Message
```

edit_message_reply_markup - editMessageReplyMarkup
Use this method to edit only the reply markup of messages. On success, if the edited message is not an inline message, the edited Message is returned, otherwise True is returned.

[[Return to contents]](#Contents)

## edit_message_text

```v
fn (mut b Bot) edit_message_text(params EditMessageText) !Message
```

edit_message_text - editMessageText
Use this method to edit text and game messages. On success, if the edited message is not an inline message, the edited Message is returned, otherwise True is returned.

[[Return to contents]](#Contents)

## export_chat_invite_link

```v
fn (mut b Bot) export_chat_invite_link(params ExportChatInviteLink) !string
```

export_chat_invite_link - exportChatInviteLink
Use this method to generate a new primary invite link for a chat; any previously generated primary link is revoked. The bot must be an administrator in the chat for this to work and must have the appropriate administrator rights. Returns the new invite link as String on success.

[[Return to contents]](#Contents)

## forward_message

```v
fn (mut b Bot) forward_message(params ForwardMessage) !Message
```

forward_message - forwardMessage
Use this method to forward messages of any kind. Service messages can't be forwarded. On success, the sent Message is returned.

[[Return to contents]](#Contents)

## get_chat

```v
fn (mut b Bot) get_chat(params GetChat) !Chat
```

get_chat - getChat
Use this method to get up to date information about the chat (current name of the user for one-on-one conversations, current username of a user, group or channel, etc.). Returns a Chat object on success.

[[Return to contents]](#Contents)

## get_chat_administrators

```v
fn (mut b Bot) get_chat_administrators(params GetChatAdministrators) ![]ChatMember
```

get_chat_administrators - getChatAdministrators
Use this method to get a list of administrators in a chat, which aren't bots. Returns an Array of ChatMember objects.

[[Return to contents]](#Contents)

## get_chat_member

```v
fn (mut b Bot) get_chat_member(params GetChatMember) !ChatMember
```

get_chat_member - getChatMember
Use this method to get information about a member of a chat. The method is guaranteed to work only if the bot is an administrator in the chat. Returns a ChatMember object on success.

[[Return to contents]](#Contents)

## get_chat_member_count

```v
fn (mut b Bot) get_chat_member_count(params GetChatMemberCount) !int
```

get_chat_member_count - getChatMemberCount
Use this method to get the number of members in a chat. Returns Int on success.

[[Return to contents]](#Contents)

## get_chat_menu_button

```v
fn (mut b Bot) get_chat_menu_button(params GetChatMenuButton) !MenuButton
```

get_chat_menu_button - getChatMenuButton
Use this method to get the current value of the bot's menu button in a private chat, or the default menu button. Returns MenuButton on success.

[[Return to contents]](#Contents)

## get_custom_emoji_stickers

```v
fn (mut b Bot) get_custom_emoji_stickers(params GetCustomEmojiStickers) ![]string
```

get_custom_emoji_stickers - getCustomEmojiStickers
Use this method to get information about custom emoji stickers by their identifiers. Returns an Array of Sticker objects.

[[Return to contents]](#Contents)

## get_file

```v
fn (mut b Bot) get_file(params GetFile) !File
```

get_file - getFile
Use this method to get basic information about a file and prepare it for downloading. For the moment, bots can download files of up to 20MB in size. On success, a File object is returned. The file can then be downloaded via the link https://api.telegram.org/file/bot<token>/<file_path>, where <file_path> is taken from the response. It is guaranteed that the link will be valid for at least 1 hour. When the link expires, a new one can be requested by calling getFile again.

[[Return to contents]](#Contents)

## get_forum_topic_icon_stickers

```v
fn (mut b Bot) get_forum_topic_icon_stickers(params GetForumTopicIconStickers) ![]Sticker
```

get_forum_topic_icon_stickers - getForumTopicIconStickers
Use this method to get custom emoji stickers, which can be used as a forum topic icon by any user. Requires no parameters. Returns an Array of Sticker objects.

[[Return to contents]](#Contents)

## get_game_high_scores

```v
fn (mut b Bot) get_game_high_scores(params GetGameHighScores) ![]GameHighScore
```

get_game_high_scores - getGameHighScores
Use this method to get data for high score tables. Will return the score of the specified user and several of their neighbors in a game. Returns an Array of GameHighScore objects.

[[Return to contents]](#Contents)

## get_me

```v
fn (mut b Bot) get_me(params GetMe) !User
```

get_me - getMe
A simple method for testing your bot's authentication token. Requires no parameters. Returns basic information about the bot in form of a User object.

[[Return to contents]](#Contents)

## get_my_commands

```v
fn (mut b Bot) get_my_commands(params GetMyCommands) ![]BotCommand
```

get_my_commands - getMyCommands
Use this method to get the current list of the bot's commands for the given scope and user language. Returns an Array of BotCommand objects. If commands aren't set, an empty list is returned.

[[Return to contents]](#Contents)

## get_my_default_administrator_rights

```v
fn (mut b Bot) get_my_default_administrator_rights(params GetMyDefaultAdministratorRights) !ChatAdministratorRights
```

get_my_default_administrator_rights - getMyDefaultAdministratorRights
Use this method to get the current default administrator rights of the bot. Returns ChatAdministratorRights on success.

[[Return to contents]](#Contents)

## get_sticker_set

```v
fn (mut b Bot) get_sticker_set(params GetStickerSet) !StickerSet
```

get_sticker_set - getStickerSet
Use this method to get a sticker set. On success, a StickerSet object is returned.

[[Return to contents]](#Contents)

## get_updates

```v
fn (mut b Bot) get_updates(params GetUpdates) ![]Update
```

get_updates - getUpdates
Use this method to receive incoming updates using long polling (wiki). Returns an Array of Update objects.

[[Return to contents]](#Contents)

## get_user_profile_photos

```v
fn (mut b Bot) get_user_profile_photos(params GetUserProfilePhotos) !UserProfilePhotos
```

get_user_profile_photos - getUserProfilePhotos
Use this method to get a list of profile pictures for a user. Returns a UserProfilePhotos object.

[[Return to contents]](#Contents)

## get_webhook_info

```v
fn (mut b Bot) get_webhook_info(params GetWebhookInfo) !WebhookInfo
```

get_webhook_info - getWebhookInfo
Use this method to get current webhook status. Requires no parameters. On success, returns a WebhookInfo object. If the bot is using getUpdates, will return an object with the url field empty.

[[Return to contents]](#Contents)

## hide_general_forum_topic

```v
fn (mut b Bot) hide_general_forum_topic(params HideGeneralForumTopic) !bool
```

hide_general_forum_topic - hideGeneralForumTopic
Use this method to hide the 'General' topic in a forum supergroup chat. The bot must be an administrator in the chat for this to work and must have the can_manage_topics administrator rights. The topic will be automatically closed if it was open. Returns True on success.

[[Return to contents]](#Contents)

## http_request

```v
fn (mut b Bot) http_request(api_method string, _data string) !string
```

[[Return to contents]](#Contents)

## leave_chat

```v
fn (mut b Bot) leave_chat(params LeaveChat) !bool
```

leave_chat - leaveChat
Use this method for your bot to leave a group, supergroup or channel. Returns True on success.

[[Return to contents]](#Contents)

## log_out

```v
fn (mut b Bot) log_out(params LogOut) !bool
```

log_out - logOut
Use this method to log out from the cloud Bot API server before launching the bot locally. You must log out the bot before running it locally, otherwise there is no guarantee that the bot will receive updates. After a successful call, you can immediately log in on a local server, but will not be able to log in back to the cloud Bot API server for 10 minutes. Returns True on success. Requires no parameters.

[[Return to contents]](#Contents)

## pin_chat_message

```v
fn (mut b Bot) pin_chat_message(params PinChatMessage) !bool
```

pin_chat_message - pinChatMessage
Use this method to add a message to the list of pinned messages in a chat. If the chat is not a private chat, the bot must be an administrator in the chat for this to work and must have the 'can_pin_messages' administrator right in a supergroup or 'can_edit_messages' administrator right in a channel. Returns True on success.

[[Return to contents]](#Contents)

## promote_chat_member

```v
fn (mut b Bot) promote_chat_member(params PromoteChatMember) !bool
```

promote_chat_member - promoteChatMember
Use this method to promote or demote a user in a supergroup or a channel. The bot must be an administrator in the chat for this to work and must have the appropriate administrator rights. Pass False for all boolean parameters to demote a user. Returns True on success.

[[Return to contents]](#Contents)

## reopen_forum_topic

```v
fn (mut b Bot) reopen_forum_topic(params ReopenForumTopic) !bool
```

reopen_forum_topic - reopenForumTopic
Use this method to reopen a closed topic in a forum supergroup chat. The bot must be an administrator in the chat for this to work and must have the can_manage_topics administrator rights, unless it is the creator of the topic. Returns True on success.

[[Return to contents]](#Contents)

## reopen_general_forum_topic

```v
fn (mut b Bot) reopen_general_forum_topic(params ReopenGeneralForumTopic) !bool
```

reopen_general_forum_topic - reopenGeneralForumTopic
Use this method to reopen a closed 'General' topic in a forum supergroup chat. The bot must be an administrator in the chat for this to work and must have the can_manage_topics administrator rights. The topic will be automatically unhidden if it was hidden. Returns True on success.

[[Return to contents]](#Contents)

## restrict_chat_member

```v
fn (mut b Bot) restrict_chat_member(params RestrictChatMember) !bool
```

restrict_chat_member - restrictChatMember
Use this method to restrict a user in a supergroup. The bot must be an administrator in the supergroup for this to work and must have the appropriate administrator rights. Pass True for all permissions to lift restrictions from a user. Returns True on success.

[[Return to contents]](#Contents)

## revoke_chat_invite_link

```v
fn (mut b Bot) revoke_chat_invite_link(params RevokeChatInviteLink) !ChatInviteLink
```

revoke_chat_invite_link - revokeChatInviteLink
Use this method to revoke an invite link created by the bot. If the primary link is revoked, a new link is automatically generated. The bot must be an administrator in the chat for this to work and must have the appropriate administrator rights. Returns the revoked invite link as ChatInviteLink object.

[[Return to contents]](#Contents)

## send_animation

```v
fn (mut b Bot) send_animation(params SendAnimation) !Message
```

send_animation - sendAnimation
Use this method to send animation files (GIF or H.264/MPEG-4 AVC video without sound). On success, the sent Message is returned. Bots can currently send animation files of up to 50 MB in size, this limit may be changed in the future.

[[Return to contents]](#Contents)

## send_audio

```v
fn (mut b Bot) send_audio(params SendAudio) !Message
```

send_audio - sendAudio
Use this method to send audio files, if you want Telegram clients to display them in the music player. Your audio must be in the .MP3 or .M4A format. On success, the sent Message is returned. Bots can currently send audio files of up to 50 MB in size, this limit may be changed in the future.

[[Return to contents]](#Contents)

## send_chat_action

```v
fn (mut b Bot) send_chat_action(params SendChatAction) !bool
```

send_chat_action - sendChatAction
Use this method when you need to tell the user that something is happening on the bot's side. The status is set for 5 seconds or less (when a message arrives from your bot, Telegram clients clear its typing status). Returns True on success.

[[Return to contents]](#Contents)

## send_contact

```v
fn (mut b Bot) send_contact(params SendContact) !Message
```

send_contact - sendContact
Use this method to send phone contacts. On success, the sent Message is returned.

[[Return to contents]](#Contents)

## send_dice

```v
fn (mut b Bot) send_dice(params SendDice) !Message
```

send_dice - sendDice
Use this method to send an animated emoji that will display a random value. On success, the sent Message is returned.

[[Return to contents]](#Contents)

## send_document

```v
fn (mut b Bot) send_document(params SendDocument) !Message
```

send_document - sendDocument
Use this method to send general files. On success, the sent Message is returned. Bots can currently send files of any type of up to 50 MB in size, this limit may be changed in the future.

[[Return to contents]](#Contents)

## send_game

```v
fn (mut b Bot) send_game(params SendGame) !Message
```

send_game - sendGame
Use this method to send a game. On success, the sent Message is returned.

[[Return to contents]](#Contents)

## send_invoice

```v
fn (mut b Bot) send_invoice(params SendInvoice) !Message
```

send_invoice - sendInvoice
Use this method to send invoices. On success, the sent Message is returned.

[[Return to contents]](#Contents)

## send_location

```v
fn (mut b Bot) send_location(params SendLocation) !Message
```

send_location - sendLocation
Use this method to send point on the map. On success, the sent Message is returned.

[[Return to contents]](#Contents)

## send_media_group

```v
fn (mut b Bot) send_media_group(params SendMediaGroup) ![]Message
```

send_media_group - sendMediaGroup
Use this method to send a group of photos, videos, documents or audios as an album. Documents and audio files can be only grouped in an album with messages of the same type. On success, an array of Messages that were sent is returned.

[[Return to contents]](#Contents)

## send_message

```v
fn (mut b Bot) send_message(params SendMessage) !Message
```

send_message - sendMessage
Use this method to send text messages. On success, the sent Message is returned.

[[Return to contents]](#Contents)

## send_photo

```v
fn (mut b Bot) send_photo(params SendPhoto) !Message
```

send_photo - sendPhoto
Use this method to send photos. On success, the sent Message is returned.

[[Return to contents]](#Contents)

## send_poll

```v
fn (mut b Bot) send_poll(params SendPoll) !Message
```

send_poll - sendPoll
Use this method to send a native poll. On success, the sent Message is returned.

[[Return to contents]](#Contents)

## send_sticker

```v
fn (mut b Bot) send_sticker(params SendSticker) !Message
```

send_sticker - sendSticker
Use this method to send static .WEBP, animated .TGS, or video .WEBM stickers. On success, the sent Message is returned.

[[Return to contents]](#Contents)

## send_venue

```v
fn (mut b Bot) send_venue(params SendVenue) !Message
```

send_venue - sendVenue
Use this method to send information about a venue. On success, the sent Message is returned.

[[Return to contents]](#Contents)

## send_video

```v
fn (mut b Bot) send_video(params SendVideo) !Message
```

send_video - sendVideo
Use this method to send video files, Telegram clients support MPEG4 videos (other formats may be sent as Document). On success, the sent Message is returned. Bots can currently send video files of up to 50 MB in size, this limit may be changed in the future.

[[Return to contents]](#Contents)

## send_video_note

```v
fn (mut b Bot) send_video_note(params SendVideoNote) !Message
```

send_video_note - sendVideoNote
As of v.4.0, Telegram clients support rounded square MPEG4 videos of up to 1 minute long. Use this method to send video messages. On success, the sent Message is returned.

[[Return to contents]](#Contents)

## send_voice

```v
fn (mut b Bot) send_voice(params SendVoice) !Message
```

send_voice - sendVoice
Use this method to send audio files, if you want Telegram clients to display the file as a playable voice message. For this to work, your audio must be in an .OGG file encoded with OPUS (other formats may be sent as Audio or Document). On success, the sent Message is returned. Bots can currently send voice messages of up to 50 MB in size, this limit may be changed in the future.

[[Return to contents]](#Contents)

## set_chat_administrator_custom_title

```v
fn (mut b Bot) set_chat_administrator_custom_title(params SetChatAdministratorCustomTitle) !bool
```

set_chat_administrator_custom_title - setChatAdministratorCustomTitle
Use this method to set a custom title for an administrator in a supergroup promoted by the bot. Returns True on success.

[[Return to contents]](#Contents)

## set_chat_description

```v
fn (mut b Bot) set_chat_description(params SetChatDescription) !bool
```

set_chat_description - setChatDescription
Use this method to change the description of a group, a supergroup or a channel. The bot must be an administrator in the chat for this to work and must have the appropriate administrator rights. Returns True on success.

[[Return to contents]](#Contents)

## set_chat_menu_button

```v
fn (mut b Bot) set_chat_menu_button(params SetChatMenuButton) !bool
```

set_chat_menu_button - setChatMenuButton
Use this method to change the bot's menu button in a private chat, or the default menu button. Returns True on success.

[[Return to contents]](#Contents)

## set_chat_permissions

```v
fn (mut b Bot) set_chat_permissions(params SetChatPermissions) !bool
```

set_chat_permissions - setChatPermissions
Use this method to set default chat permissions for all members. The bot must be an administrator in the group or a supergroup for this to work and must have the can_restrict_members administrator rights. Returns True on success.

[[Return to contents]](#Contents)

## set_chat_photo

```v
fn (mut b Bot) set_chat_photo(params SetChatPhoto) !bool
```

set_chat_photo - setChatPhoto
Use this method to set a new profile photo for the chat. Photos can't be changed for private chats. The bot must be an administrator in the chat for this to work and must have the appropriate administrator rights. Returns True on success.

[[Return to contents]](#Contents)

## set_chat_sticker_set

```v
fn (mut b Bot) set_chat_sticker_set(params SetChatStickerSet) !bool
```

set_chat_sticker_set - setChatStickerSet
Use this method to set a new group sticker set for a supergroup. The bot must be an administrator in the chat for this to work and must have the appropriate administrator rights. Use the field can_set_sticker_set optionally returned in getChat requests to check if the bot can use this method. Returns True on success.

[[Return to contents]](#Contents)

## set_chat_title

```v
fn (mut b Bot) set_chat_title(params SetChatTitle) !bool
```

set_chat_title - setChatTitle
Use this method to change the title of a chat. Titles can't be changed for private chats. The bot must be an administrator in the chat for this to work and must have the appropriate administrator rights. Returns True on success.

[[Return to contents]](#Contents)

## set_game_score

```v
fn (mut b Bot) set_game_score(params SetGameScore) !Message
```

set_game_score - setGameScore
Use this method to set the score of the specified user in a game message. On success, if the message is not an inline message, the Message is returned, otherwise True is returned. Returns an error, if the new score is not greater than the user's current score in the chat and force is False.

[[Return to contents]](#Contents)

## set_my_commands

```v
fn (mut b Bot) set_my_commands(params SetMyCommands) !bool
```

set_my_commands - setMyCommands
Use this method to change the list of the bot's commands. See this manual for more details about bot commands. Returns True on success.

[[Return to contents]](#Contents)

## set_my_default_administrator_rights

```v
fn (mut b Bot) set_my_default_administrator_rights(params SetMyDefaultAdministratorRights) !bool
```

set_my_default_administrator_rights - setMyDefaultAdministratorRights
Use this method to change the default administrator rights requested by the bot when it's added as an administrator to groups or channels. These rights will be suggested to users, but they are are free to modify the list before adding the bot. Returns True on success.

[[Return to contents]](#Contents)

## set_passport_data_errors

```v
fn (mut b Bot) set_passport_data_errors(params SetPassportDataErrors) !bool
```

set_passport_data_errors - setPassportDataErrors
Informs a user that some of the Telegram Passport elements they provided contains errors. The user will not be able to re-submit their Passport to you until the errors are fixed (the contents of the field for which you returned the error must change). Returns True on success.

[[Return to contents]](#Contents)

## set_sticker_position_in_set

```v
fn (mut b Bot) set_sticker_position_in_set(params SetStickerPositionInSet) !bool
```

set_sticker_position_in_set - setStickerPositionInSet
Use this method to move a sticker in a set created by the bot to a specific position. Returns True on success.

[[Return to contents]](#Contents)

## set_sticker_set_thumb

```v
fn (mut b Bot) set_sticker_set_thumb(params SetStickerSetThumb) !bool
```

set_sticker_set_thumb - setStickerSetThumb
Use this method to set the thumbnail of a sticker set. Animated thumbnails can be set for animated sticker sets only. Video thumbnails can be set only for video sticker sets only. Returns True on success.

[[Return to contents]](#Contents)

## set_webhook

```v
fn (mut b Bot) set_webhook(params SetWebhook) !bool
```

set_webhook - setWebhook
Use this method to specify a URL and receive incoming updates via an outgoing webhook. Whenever there is an update for the bot, we will send an HTTPS POST request to the specified URL, containing a JSON-serialized Update. In case of an unsuccessful request, we will give up after a reasonable amount of attempts. Returns True on success.

[[Return to contents]](#Contents)

## stop_message_live_location

```v
fn (mut b Bot) stop_message_live_location(params StopMessageLiveLocation) !Message
```

stop_message_live_location - stopMessageLiveLocation
Use this method to stop updating a live location message before live_period expires. On success, if the message is not an inline message, the edited Message is returned, otherwise True is returned.

[[Return to contents]](#Contents)

## stop_poll

```v
fn (mut b Bot) stop_poll(params StopPoll) !Poll
```

stop_poll - stopPoll
Use this method to stop a poll which was sent by the bot. On success, the stopped Poll is returned.

[[Return to contents]](#Contents)

## unban_chat_member

```v
fn (mut b Bot) unban_chat_member(params UnbanChatMember) !bool
```

unban_chat_member - unbanChatMember
Use this method to unban a previously banned user in a supergroup or channel. The user will not return to the group or channel automatically, but will be able to join via link, etc. The bot must be an administrator for this to work. By default, this method guarantees that after the call the user is not a member of the chat, but will be able to join it. So if the user is a member of the chat they will also be removed from the chat. If you don't want this, use the parameter only_if_banned. Returns True on success.

[[Return to contents]](#Contents)

## unban_chat_sender_chat

```v
fn (mut b Bot) unban_chat_sender_chat(params UnbanChatSenderChat) !bool
```

unban_chat_sender_chat - unbanChatSenderChat
Use this method to unban a previously banned channel chat in a supergroup or channel. The bot must be an administrator for this to work and must have the appropriate administrator rights. Returns True on success.

[[Return to contents]](#Contents)

## unhide_general_forum_topic

```v
fn (mut b Bot) unhide_general_forum_topic(params UnhideGeneralForumTopic) !bool
```

unhide_general_forum_topic - unhideGeneralForumTopic
Use this method to unhide the 'General' topic in a forum supergroup chat. The bot must be an administrator in the chat for this to work and must have the can_manage_topics administrator rights. Returns True on success.

[[Return to contents]](#Contents)

## unpin_all_chat_messages

```v
fn (mut b Bot) unpin_all_chat_messages(params UnpinAllChatMessages) !bool
```

unpin_all_chat_messages - unpinAllChatMessages
Use this method to clear the list of pinned messages in a chat. If the chat is not a private chat, the bot must be an administrator in the chat for this to work and must have the 'can_pin_messages' administrator right in a supergroup or 'can_edit_messages' administrator right in a channel. Returns True on success.

[[Return to contents]](#Contents)

## unpin_all_forum_topic_messages

```v
fn (mut b Bot) unpin_all_forum_topic_messages(params UnpinAllForumTopicMessages) !bool
```

unpin_all_forum_topic_messages - unpinAllForumTopicMessages
Use this method to clear the list of pinned messages in a forum topic. The bot must be an administrator in the chat for this to work and must have the can_pin_messages administrator right in the supergroup. Returns True on success.

[[Return to contents]](#Contents)

## unpin_chat_message

```v
fn (mut b Bot) unpin_chat_message(params UnpinChatMessage) !bool
```

unpin_chat_message - unpinChatMessage
Use this method to remove a message from the list of pinned messages in a chat. If the chat is not a private chat, the bot must be an administrator in the chat for this to work and must have the 'can_pin_messages' administrator right in a supergroup or 'can_edit_messages' administrator right in a channel. Returns True on success.

[[Return to contents]](#Contents)

## upload_sticker_file

```v
fn (mut b Bot) upload_sticker_file(params UploadStickerFile) !File
```

upload_sticker_file - uploadStickerFile
Use this method to upload a .PNG file with a sticker for later use in createNewStickerSet and addStickerToSet methods (can be used multiple times). Returns the uploaded File on success.

[[Return to contents]](#Contents)

## BotCommand

```v
struct BotCommand {
pub:
	// command Text of the command; 1-32 characters. Can contain only lowercase English letters, digits and underscores.
	command string
	// description Description of the command; 1-256 characters.
	description string
}
```

BotCommand This object represents a bot command.

[[Return to contents]](#Contents)

## BotCommandScopeAllChatAdministrators

```v
struct BotCommandScopeAllChatAdministrators {
pub:
	// type Scope type, must be all_chat_administrators
	@type string
}
```

BotCommandScopeAllChatAdministrators Represents the scope of bot commands, covering all group and supergroup chat administrators.

[[Return to contents]](#Contents)

## BotCommandScopeAllGroupChats

```v
struct BotCommandScopeAllGroupChats {
pub:
	// type Scope type, must be all_group_chats
	@type string
}
```

BotCommandScopeAllGroupChats Represents the scope of bot commands, covering all group and supergroup chats.

[[Return to contents]](#Contents)

## BotCommandScopeAllPrivateChats

```v
struct BotCommandScopeAllPrivateChats {
pub:
	// type Scope type, must be all_private_chats
	@type string
}
```

BotCommandScopeAllPrivateChats Represents the scope of bot commands, covering all private chats.

[[Return to contents]](#Contents)

## BotCommandScopeChat

```v
struct BotCommandScopeChat {
pub:
	// type Scope type, must be chat
	@type string
	// chat_id Unique identifier for the target chat or username of the target supergroup (in the format @supergroupusername)
	chat_id string
}
```

BotCommandScopeChat Represents the scope of bot commands, covering a specific chat.

[[Return to contents]](#Contents)

## BotCommandScopeChatAdministrators

```v
struct BotCommandScopeChatAdministrators {
pub:
	// type Scope type, must be chat_administrators
	@type string
	// chat_id Unique identifier for the target chat or username of the target supergroup (in the format @supergroupusername)
	chat_id string
}
```

BotCommandScopeChatAdministrators Represents the scope of bot commands, covering all administrators of a specific group or supergroup chat.

[[Return to contents]](#Contents)

## BotCommandScopeChatMember

```v
struct BotCommandScopeChatMember {
pub:
	// type Scope type, must be chat_member
	@type string
	// chat_id Unique identifier for the target chat or username of the target supergroup (in the format @supergroupusername)
	chat_id string
	// user_id Unique identifier of the target user
	user_id int
}
```

BotCommandScopeChatMember Represents the scope of bot commands, covering a specific member of a group or supergroup chat.

[[Return to contents]](#Contents)

## BotCommandScopeDefault

```v
struct BotCommandScopeDefault {
pub:
	// type Scope type, must be default
	@type string
}
```

BotCommandScopeDefault Represents the default scope of bot commands. Default commands are used if no commands with a narrower scope are specified for the user.

[[Return to contents]](#Contents)

## CallbackGame

```v
struct CallbackGame {
pub:
	// user_id User identifier
	user_id int
	// score New score, must be non-negative
	score int
	// force Pass True if the high score is allowed to decrease. This can be useful when fixing mistakes or banning cheaters
	force bool
	// disable_edit_message Pass True if the game message should not be automatically edited to include the current scoreboard
	disable_edit_message bool
	// chat_id Required if inline_message_id is not specified. Unique identifier for the target chat
	chat_id int
	// message_id Required if inline_message_id is not specified. Identifier of the sent message
	message_id int
	// inline_message_id Required if chat_id and message_id are not specified. Identifier of the inline message
	inline_message_id string
}
```

CallbackGame A placeholder, currently holds no information. Use BotFather to set up your game.

[[Return to contents]](#Contents)

## CallbackQuery

```v
struct CallbackQuery {
pub mut:
	// id Unique identifier for this query
	id string
	// from Sender
	from User
	// message Optional. Message with the callback button that originated the query. Note that message content and message date will not be available if the message is too old
	message Message
	// inline_message_id Optional. Identifier of the message sent via the bot in inline mode, that originated the query.
	inline_message_id string
	// chat_instance Global identifier, uniquely corresponding to the chat to which the message with the callback button was sent. Useful for high scores in games.
	chat_instance string
	// data Optional. Data associated with the callback button. Be aware that the message originated the query can contain no callback buttons with this data.
	data string
	// game_short_name Optional. Short name of a Game to be returned, serves as the unique identifier for the game
	game_short_name string
}
```

CallbackQuery This object represents an incoming callback query from a callback button in an inline keyboard. If the button that originated the query was attached to a message sent by the bot, the field message will be present. If the button was attached to a message sent via the bot (in inline mode), the field inline_message_id will be present. Exactly one of the fields data or game_short_name will be present.

[[Return to contents]](#Contents)

## Chat

```v
struct Chat {
pub:
	// id Unique identifier for this chat. This number mad some programming languages may have difficulty/silent defects in interpreting it. But it has at most 52 significant bits, so a signed 64-bit integer or double-precision float type are safe for storing this identify have more than 32 significant bits anier.
	id i64
	// type Type of chat, can be either “private”, “group”, “supergroup” or “channel”
	@type string
	// title Optional. Title, for supergroups, channels and group chats
	title string
	// username Optional. Username, for private chats, supergroups and channels if available
	username string
	// first_name Optional. First name of the other party in a private chat
	first_name string
	// last_name Optional. Last name of the other party in a private chat
	last_name string
	// is_forum Optional. True, if the supergroup chat is a forum (has topics enabled)
	is_forum bool
	// photo Optional. Chat photo. Returned only in getChat.
	photo ChatPhoto
	// active_usernames Optional. If non-empty, the list of all active chat usernames; for private chats, supergroups and channels. Returned only in getChat.
	active_usernames []string
	// emoji_status_custom_emoji_id Optional. Custom emoji identifier of emoji status of the other party in a private chat. Returned only in getChat.
	emoji_status_custom_emoji_id string
	// bio Optional. Bio of the other party in a private chat. Returned only in getChat.
	bio string
	// has_private_forwards Optional. True, if privacy settings of the other party in the private chat allows to use tg://user?id=<user_id> links only in chats with the user. Returned only in getChat.
	has_private_forwards bool
	// has_restricted_voice_and_video_messages Optional. True, if the privacy settings of the other party restrict sending voice and video note messages in the private chat. Returned only in getChat.
	has_restricted_voice_and_video_messages bool
	// join_to_send_messages Optional. True, if users need to join the supergroup before they can send messages. Returned only in getChat.
	join_to_send_messages bool
	// join_by_request Optional. True, if all users directly joining the supergroup need to be approved by supergroup administrators. Returned only in getChat.
	join_by_request bool
	// description Optional. Description, for groups, supergroups and channel chats. Returned only in getChat.
	description string
	// invite_link Optional. Primary invite link, for groups, supergroups and channel chats. Returned only in getChat.
	invite_link string
	// pinned_message Optional. The most recent pinned message (by sending date). Returned only in getChat.
	pinned_message &Message
	// permissions Optional. Default chat member permissions, for groups and supergroups. Returned only in getChat.
	permissions ChatPermissions
	// slow_mode_delay Optional. For supergroups, the minimum allowed delay between consecutive messages sent by each unpriviledged user; in seconds. Returned only in getChat.
	slow_mode_delay int
	// message_auto_delete_time Optional. The time after which all messages sent to the chat will be automatically deleted; in seconds. Returned only in getChat.
	message_auto_delete_time int
	// has_aggressive_anti_spam_enabled Optional. True, if aggressive anti-spam checks are enabled in the supergroup. The field is only available to chat administrators. Returned only in getChat.
	has_aggressive_anti_spam_enabled bool
	// has_hidden_members Optional. True, if non-administrators can only get the list of bots and administrators in the chat. Returned only in getChat.
	has_hidden_members bool
	// has_protected_content Optional. True, if messages from the chat can't be forwarded to other chats. Returned only in getChat.
	has_protected_content bool
	// sticker_set_name Optional. For supergroups, name of group sticker set. Returned only in getChat.
	sticker_set_name string
	// can_set_sticker_set Optional. True, if the bot can change the group sticker set. Returned only in getChat.
	can_set_sticker_set bool
	// linked_chat_id Optional. Unique identifier for the linked chat, i.e. the discussion group identifier for a channel and vice versa; for supergroups and channel chats. This identifier may be greater than 32 bits and some programming languages may have difficulty/silent defects in interpreting it. But it is smaller than 52 bits, so a signed 64 bit integer or double-precision float type are safe for storing this identifier. Returned only in getChat.
	linked_chat_id int
	// location Optional. For supergroups, the location to which the supergroup is connected. Returned only in getChat.
	location ChatLocation
}
```

Chat This object represents a chat.

[[Return to contents]](#Contents)

## ChatAdministratorRights

```v
struct ChatAdministratorRights {
pub:
	// is_anonymous True, if the user's presence in the chat is hidden
	is_anonymous bool
	// can_manage_chat True, if the administrator can access the chat event log, chat statistics, message statistics in channels, see channel members, see anonymous administrators in supergroups and ignore slow mode. Implied by any other administrator privilege
	can_manage_chat bool
	// can_delete_messages True, if the administrator can delete messages of other users
	can_delete_messages bool
	// can_manage_video_chats True, if the administrator can manage video chats
	can_manage_video_chats bool
	// can_restrict_members True, if the administrator can restrict, ban or unban chat members
	can_restrict_members bool
	// can_promote_members True, if the administrator can add new administrators with a subset of their own privileges or demote administrators that he has promoted, directly or indirectly (promoted by administrators that were appointed by the user)
	can_promote_members bool
	// can_change_info True, if the user is allowed to change the chat title, photo and other settings
	can_change_info bool
	// can_invite_users True, if the user is allowed to invite new users to the chat
	can_invite_users bool
	// can_post_messages Optional. True, if the administrator can post in the channel; channels only
	can_post_messages bool
	// can_edit_messages Optional. True, if the administrator can edit messages of other users and can pin messages; channels only
	can_edit_messages bool
	// can_pin_messages Optional. True, if the user is allowed to pin messages; groups and supergroups only
	can_pin_messages bool
	// can_manage_topics Optional. True, if the user is allowed to create, rename, close, and reopen forum topics; supergroups only
	can_manage_topics bool
}
```

ChatAdministratorRights Represents the rights of an administrator in a chat.

[[Return to contents]](#Contents)

## ChatInviteLink

```v
struct ChatInviteLink {
pub:
	// invite_link The invite link. If the link was created by another chat administrator, then the second part of the link will be replaced with “…”.
	invite_link string
	// creator Creator of the link
	creator User
	// creates_join_request True, if users joining the chat via the link need to be approved by chat administrators
	creates_join_request bool
	// is_primary True, if the link is primary
	is_primary bool
	// is_revoked True, if the link is revoked
	is_revoked bool
	// name Optional. Invite link name
	name string
	// expire_date Optional. Point in time (Unix timestamp) when the link will expire or has been expired
	expire_date int
	// member_limit Optional. The maximum number of users that can be members of the chat simultaneously after joining the chat via this invite link; 1-99999
	member_limit int
	// pending_join_request_count Optional. Number of pending join requests created using this link
	pending_join_request_count int
}
```

ChatInviteLink Represents an invite link for a chat.

[[Return to contents]](#Contents)

## ChatJoinRequest

```v
struct ChatJoinRequest {
pub:
	// chat Chat to which the request was sent
	chat Chat
	// from User that sent the join request
	from User
	// user_chat_id Identifier of a private chat with the user who sent the join request. This number may have more than 32 significant bits and some programming languages may have difficulty/silent defects in interpreting it.
	// But it has at most 52 significant bits, so a 64-bit integer or double-precision float type are safe for storing this identifier.
	// The bot can use this identifier for 24 hours to send messages until the join request is processed, assuming no other administrator contacted the user.
	user_chat_id i64
	// date Date the request was sent in Unix time
	date int
	// bio Optional. Bio of the user.
	bio string
	// invite_link Optional. Chat invite link that was used by the user to send the join request
	invite_link ChatInviteLink
}
```

ChatJoinRequest Represents a join request sent to a chat.

[[Return to contents]](#Contents)

## ChatLocation

```v
struct ChatLocation {
pub:
	// location The location to which the supergroup is connected. Can't be a live location.
	location Location
	// address Location address; 1-64 characters, as defined by the chat owner
	address string
}
```

ChatLocation Represents a location to which a chat is connected.

[[Return to contents]](#Contents)

## ChatMemberAdministrator

```v
struct ChatMemberAdministrator {
pub:
	// status The member's status in the chat, always “administrator”
	status string
	// user Information about the user
	user User
	// can_be_edited True, if the bot is allowed to edit administrator privileges of that user
	can_be_edited bool
	// is_anonymous True, if the user's presence in the chat is hidden
	is_anonymous bool
	// can_manage_chat True, if the administrator can access the chat event log, chat statistics, message statistics in channels, see channel members, see anonymous administrators in supergroups and ignore slow mode. Implied by any other administrator privilege
	can_manage_chat bool
	// can_delete_messages True, if the administrator can delete messages of other users
	can_delete_messages bool
	// can_manage_video_chats True, if the administrator can manage video chats
	can_manage_video_chats bool
	// can_restrict_members True, if the administrator can restrict, ban or unban chat members
	can_restrict_members bool
	// can_promote_members True, if the administrator can add new administrators with a subset of their own privileges or demote administrators that he has promoted, directly or indirectly (promoted by administrators that were appointed by the user)
	can_promote_members bool
	// can_change_info True, if the user is allowed to change the chat title, photo and other settings
	can_change_info bool
	// can_invite_users True, if the user is allowed to invite new users to the chat
	can_invite_users bool
	// can_post_messages Optional. True, if the administrator can post in the channel; channels only
	can_post_messages bool
	// can_edit_messages Optional. True, if the administrator can edit messages of other users and can pin messages; channels only
	can_edit_messages bool
	// can_pin_messages Optional. True, if the user is allowed to pin messages; groups and supergroups only
	can_pin_messages bool
	// can_manage_topics Optional. True, if the user is allowed to create, rename, close, and reopen forum topics; supergroups only
	can_manage_topics bool
	// custom_title Optional. Custom title for this user
	custom_title string
}
```

ChatMemberAdministrator Represents a chat member that has some additional privileges.

[[Return to contents]](#Contents)

## ChatMemberBanned

```v
struct ChatMemberBanned {
pub:
	// status The member's status in the chat, always “kicked”
	status string
	// user Information about the user
	user User
	// until_date Date when restrictions will be lifted for this user; unix time. If 0, then the user is banned forever
	until_date int
}
```

ChatMemberBanned Represents a chat member that was banned in the chat and can't return to the chat or view chat messages.

[[Return to contents]](#Contents)

## ChatMemberLeft

```v
struct ChatMemberLeft {
pub:
	// status The member's status in the chat, always “left”
	status string
	// user Information about the user
	user User
}
```

ChatMemberLeft Represents a chat member that isn't currently a member of the chat, but may join it themselves.

[[Return to contents]](#Contents)

## ChatMemberMember

```v
struct ChatMemberMember {
pub:
	// status The member's status in the chat, always “member”
	status string
	// user Information about the user
	user User
}
```

ChatMemberMember Represents a chat member that has no additional privileges or restrictions.

[[Return to contents]](#Contents)

## ChatMemberOwner

```v
struct ChatMemberOwner {
pub:
	// status The member's status in the chat, always “creator”
	status string
	// user Information about the user
	user User
	// is_anonymous True, if the user's presence in the chat is hidden
	is_anonymous bool
	// custom_title Optional. Custom title for this user
	custom_title string
}
```

ChatMemberOwner Represents a chat member that owns the chat and has all administrator privileges.

[[Return to contents]](#Contents)

## ChatMemberRestricted

```v
struct ChatMemberRestricted {
pub:
	// status The member's status in the chat, always “restricted”
	status string
	// user Information about the user
	user User
	// is_member True, if the user is a member of the chat at the moment of the request
	is_member bool
	// can_change_info True, if the user is allowed to change the chat title, photo and other settings
	can_change_info bool
	// can_invite_users True, if the user is allowed to invite new users to the chat
	can_invite_users bool
	// can_pin_messages True, if the user is allowed to pin messages
	can_pin_messages bool
	// can_manage_topics True, if the user is allowed to create forum topics
	can_manage_topics bool
	// can_send_messages True, if the user is allowed to send text messages, contacts, locations and venues
	can_send_messages bool
	// can_send_audios	True, if the user is allowed to send audios
	can_send_audios bool
	// can_send_documents	True, if the user is allowed to send documents
	can_send_documents bool
	// can_send_photos	True, if the user is allowed to send photos
	can_send_photos bool
	// can_send_videos	True, if the user is allowed to send videos
	can_send_videos bool
	// can_send_video_notes	True, if the user is allowed to send video notes
	can_send_video_notes bool
	// can_send_voice_notes	True, if the user is allowed to send voice notes
	can_send_voice_notes bool
	// can_send_polls True, if the user is allowed to send polls
	can_send_polls bool
	// can_send_other_messages True, if the user is allowed to send animations, games, stickers and use inline bots
	can_send_other_messages bool
	// can_add_web_page_previews True, if the user is allowed to add web page previews to their messages
	can_add_web_page_previews bool
	// until_date Date when restrictions will be lifted for this user; unix time. If 0, then the user is restricted forever
	until_date int
}
```

ChatMemberRestricted Represents a chat member that is under certain restrictions in the chat. Supergroups only.

[[Return to contents]](#Contents)

## ChatMemberUpdated

```v
struct ChatMemberUpdated {
pub:
	// chat Chat the user belongs to
	chat Chat
	// from Performer of the action, which resulted in the change
	from User
	// date Date the change was done in Unix time
	date int
	// old_chat_member Previous information about the chat member
	old_chat_member ChatMember
	// new_chat_member New information about the chat member
	new_chat_member ChatMember
	// invite_link Optional. Chat invite link, which was used by the user to join the chat; for joining by invite link events only.
	invite_link ChatInviteLink
}
```

ChatMemberUpdated This object represents changes in the status of a chat member.

[[Return to contents]](#Contents)

## ChatPermissions

```v
struct ChatPermissions {
pub:
	// can_send_messages Optional. True, if the user is allowed to send text messages, contacts, locations and venues
	can_send_messages bool
	// can_send_audios	Optional. True, if the user is allowed to send audios
	can_send_audios bool
	// can_send_documents Optional. True, if the user is allowed to send documents
	can_send_documents bool
	// can_send_photos	Optional. True, if the user is allowed to send photos
	can_send_photos bool
	// can_send_videos	Optional. True, if the user is allowed to send videos
	can_send_videos bool
	// can_send_video_notes	Optional. True, if the user is allowed to send video notes
	can_send_video_notes bool
	// can_send_voice_notes	Optional. True, if the user is allowed to send voice notes
	can_send_voice_notes bool
	// can_send_polls Optional. True, if the user is allowed to send polls, implies can_send_messages
	can_send_polls bool
	// can_send_other_messages Optional. True, if the user is allowed to send animations, games, stickers and use inline bots, implies can_send_media_messages
	can_send_other_messages bool
	// can_add_web_page_previews Optional. True, if the user is allowed to add web page previews to their messages, implies can_send_media_messages
	can_add_web_page_previews bool
	// can_change_info Optional. True, if the user is allowed to change the chat title, photo and other settings. Ignored in public supergroups
	can_change_info bool
	// can_invite_users Optional. True, if the user is allowed to invite new users to the chat
	can_invite_users bool
	// can_pin_messages Optional. True, if the user is allowed to pin messages. Ignored in public supergroups
	can_pin_messages bool
	// can_manage_topics Optional. True, if the user is allowed to create forum topics. If omitted defaults to the value of can_pin_messages
	can_manage_topics bool
}
```

ChatPermissions Describes actions that a non-administrator user is allowed to take in a chat.

[[Return to contents]](#Contents)

## ChatPhoto

```v
struct ChatPhoto {
pub:
	// small_file_id File identifier of small (160x160) chat photo. This file_id can be used only for photo download and only for as long as the photo is not changed.
	small_file_id string
	// small_file_unique_id Unique file identifier of small (160x160) chat photo, which is supposed to be the same over time and for different bots. Can't be used to download or reuse the file.
	small_file_unique_id string
	// big_file_id File identifier of big (640x640) chat photo. This file_id can be used only for photo download and only for as long as the photo is not changed.
	big_file_id string
	// big_file_unique_id Unique file identifier of big (640x640) chat photo, which is supposed to be the same over time and for different bots. Can't be used to download or reuse the file.
	big_file_unique_id string
}
```

ChatPhoto This object represents a chat photo.

[[Return to contents]](#Contents)

## ChatShared

```v
struct ChatShared {
	// request_id Identifier of the request
	request_id int
	// chat_id Identifier of the shared user. This number may have more than 32 significant bits and some programming languages may have difficulty/silent defects in interpreting it. But it has at most 52 significant bits, so a 64-bit integer or double-precision float type are safe for storing this identifier. The bot may not have access to the chat and could be unable to use this identifier, unless the chat is already known to the bot by some other means.
	chat_id i64
}
```

ChatShared This object contains information about the chat whose identifier was shared with the bot using a KeyboardButtonRequestChat button.

[[Return to contents]](#Contents)

## ChosenInlineResult

```v
struct ChosenInlineResult {
pub:
	// result_id The unique identifier for the result that was chosen
	result_id string
	// from The user that chose the result
	from User
	// location Optional. Sender location, only for bots that require user location
	location Location
	// inline_message_id Optional. Identifier of the sent inline message. Available only if there is an inline keyboard attached to the message. Will be also received in callback queries and can be used to edit the message.
	inline_message_id string
	// query The query that was used to obtain the result
	query string
}
```

ChosenInlineResult Represents a result of an inline query that was chosen by the user and sent to their chat partner.

[[Return to contents]](#Contents)

## Close

```v
struct Close {
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
```

[[Return to contents]](#Contents)

## CloseForumTopic

```v
struct CloseForumTopic {
	// chat_id Unique identifier for the target chat or username of the target supergroup (in the format @supergroupusername)
	chat_id i64
	// message_thread_id Unique identifier for the target message thread of the forum topic
	message_thread_id int
}
```

[[Return to contents]](#Contents)

## CloseGeneralForumTopic

```v
struct CloseGeneralForumTopic {
	// chat_id Unique identifier for the target chat or username of the target supergroup (in the format @supergroupusername)
	chat_id i64
}
```

[[Return to contents]](#Contents)

## Contact

```v
struct Contact {
pub:
	// phone_number Contact's phone number
	phone_number string
	// first_name Contact's first name
	first_name string
	// last_name Optional. Contact's last name
	last_name string
	// user_id Optional. Contact's user identifier in Telegram. This number may have more than 32 significant bits and some programming languages may have difficulty/silent defects in interpreting it. But it has at most 52 significant bits, so a 64-bit integer or double-precision float type are safe for storing this identifier.
	user_id i64
	// vcard Optional. Additional data about the contact in the form of a vCard
	vcard string
}
```

Contact This object represents a phone contact.

[[Return to contents]](#Contents)

## CopyMessage

```v
struct CopyMessage {
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
```

[[Return to contents]](#Contents)

## CreateChatInviteLink

```v
struct CreateChatInviteLink {
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
```

[[Return to contents]](#Contents)

## CreateForumTopic

```v
struct CreateForumTopic {
	// chat_id Unique identifier for the target chat or username of the target supergroup (in the format @supergroupusername)
	chat_id i64
	// name Topic name, 1-128 characters
	name string
	// icon_color Color of the topic icon in RGB format. Currently, must be one of 7322096 (0x6FB9F0), 16766590 (0xFFD67E), 13338331 (0xCB86DB), 9367192 (0x8EEE98), 16749490 (0xFF93B2), or 16478047 (0xFB6F5F)
	icon_color int
	// icon_custom_emoji_id Unique identifier of the custom emoji shown as the topic icon. Use getForumTopicIconStickers to get all allowed custom emoji identifiers.
	icon_custom_emoji_id string
}
```

[[Return to contents]](#Contents)

## CreateInvoiceLink

```v
struct CreateInvoiceLink {
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
```

[[Return to contents]](#Contents)

## CreateNewStickerSet

```v
struct CreateNewStickerSet {
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
```

[[Return to contents]](#Contents)

## DeclineChatJoinRequest

```v
struct DeclineChatJoinRequest {
	// chat_id Unique identifier for the target chat or username of the target channel (in the format @channelusername)
	chat_id i64
	// user_id Unique identifier of the target user
	user_id int
}
```

[[Return to contents]](#Contents)

## DeleteChatPhoto

```v
struct DeleteChatPhoto {
	// chat_id Unique identifier for the target chat or username of the target channel (in the format @channelusername)
	chat_id i64
}
```

[[Return to contents]](#Contents)

## DeleteChatStickerSet

```v
struct DeleteChatStickerSet {
	// chat_id Unique identifier for the target chat or username of the target supergroup (in the format @supergroupusername)
	chat_id i64
}
```

[[Return to contents]](#Contents)

## DeleteForumTopic

```v
struct DeleteForumTopic {
	// chat_id Unique identifier for the target chat or username of the target supergroup (in the format @supergroupusername)
	chat_id i64
	// message_thread_id Unique identifier for the target message thread of the forum topic
	message_thread_id int
}
```

[[Return to contents]](#Contents)

## DeleteMessage

```v
struct DeleteMessage {
	// chat_id Unique identifier for the target chat or username of the target channel (in the format @channelusername)
	chat_id i64
	// message_id Identifier of the message to delete
	message_id int
}
```

[[Return to contents]](#Contents)

## DeleteMyCommands

```v
struct DeleteMyCommands {
	// scope A JSON-serialized object, describing scope of users for which the commands are relevant. Defaults to BotCommandScopeDefault.
	scope BotCommandScope
	// language_code A two-letter ISO 639-1 language code. If empty, commands will be applied to all users from the given scope, for whose language there are no dedicated commands
	language_code string
}
```

[[Return to contents]](#Contents)

## DeleteStickerFromSet

```v
struct DeleteStickerFromSet {
	// sticker File identifier of the sticker
	sticker string
}
```

[[Return to contents]](#Contents)

## DeleteWebhook

```v
struct DeleteWebhook {
}
```

[[Return to contents]](#Contents)

## Dice

```v
struct Dice {
pub:
	// emoji Emoji on which the dice throw animation is based
	emoji string
	// value Value of the dice, 1-6 for “”, “” and “” base emoji, 1-5 for “” and “” base emoji, 1-64 for “” base emoji
	value int
}
```

Dice This object represents an animated emoji that displays a random value.

[[Return to contents]](#Contents)

## Document

```v
struct Document {
pub:
	// file_id Identifier for this file, which can be used to download or reuse the file
	file_id string
	// file_unique_id Unique identifier for this file, which is supposed to be the same over time and for different bots. Can't be used to download or reuse the file.
	file_unique_id string
	// thumb Optional. Document thumbnail as defined by sender
	thumb PhotoSize
	// file_name Optional. Original filename as defined by sender
	file_name string
	// mime_type Optional. MIME type of the file as defined by sender
	mime_type string
	// file_size Optional. File size in bytes. It can be bigger than 2^31 and some programming languages may have difficulty/silent defects in interpreting it. But it has at most 52 significant bits, so a signed 64-bit integer or double-precision float type are safe for storing this value.
	file_size i64
}
```

Document This object represents a general file (as opposed to photos, voice messages and audio files).

[[Return to contents]](#Contents)

## EditChatInviteLink

```v
struct EditChatInviteLink {
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
```

[[Return to contents]](#Contents)

## EditForumTopic

```v
struct EditForumTopic {
	// chat_id Unique identifier for the target chat or username of the target supergroup (in the format @supergroupusername)
	chat_id i64
	// message_thread_id Unique identifier for the target message thread of the forum topic
	message_thread_id int
	// name New topic name, 0-128 characters. If not specified or empty, the current name of the topic will be kept
	name string
	// icon_custom_emoji_id New unique identifier of the custom emoji shown as the topic icon. Use getForumTopicIconStickers to get all allowed custom emoji identifiers. Pass an empty string to remove the icon. If not specified, the current icon will be kept
	icon_custom_emoji_id string
}
```

[[Return to contents]](#Contents)

## EditGeneralForumTopic

```v
struct EditGeneralForumTopic {
	// chat_id Unique identifier for the target chat or username of the target supergroup (in the format @supergroupusername)
	chat_id i64
	// name New topic name, 1-128 characters
	name string
}
```

[[Return to contents]](#Contents)

## EditMessageCaption

```v
struct EditMessageCaption {
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
```

[[Return to contents]](#Contents)

## EditMessageLiveLocation

```v
struct EditMessageLiveLocation {
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
```

[[Return to contents]](#Contents)

## EditMessageMedia

```v
struct EditMessageMedia {
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
```

[[Return to contents]](#Contents)

## EditMessageReplyMarkup

```v
struct EditMessageReplyMarkup {
	// chat_id Required if inline_message_id is not specified. Unique identifier for the target chat or username of the target channel (in the format @channelusername)
	chat_id i64
	// message_id Required if inline_message_id is not specified. Identifier of the message to edit
	message_id int
	// inline_message_id Required if chat_id and message_id are not specified. Identifier of the inline message
	inline_message_id string
	// reply_markup A JSON-serialized object for an inline keyboard.
	reply_markup InlineKeyboardMarkup
}
```

[[Return to contents]](#Contents)

## EditMessageText

```v
struct EditMessageText {
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
```

[[Return to contents]](#Contents)

## EncryptedCredentials

```v
struct EncryptedCredentials {
pub:
	// data Base64-encoded encrypted JSON-serialized data with unique user's payload, data hashes and secrets required for EncryptedPassportElement decryption and authentication
	data string
	// hash Base64-encoded data hash for data authentication
	hash string
	// secret Base64-encoded secret, encrypted with the bot's public RSA key, required for data decryption
	secret string
}
```

EncryptedCredentials Describes data required for decrypting and authenticating EncryptedPassportElement. See the Telegram Passport Documentation for a complete description of the data decryption and authentication processes.

[[Return to contents]](#Contents)

## EncryptedPassportElement

```v
struct EncryptedPassportElement {
pub:
	// type Element type. One of “personal_details”, “passport”, “driver_license”, “identity_card”, “internal_passport”, “address”, “utility_bill”, “bank_statement”, “rental_agreement”, “passport_registration”, “temporary_registration”, “phone_number”, “email”.
	@type string
	// data Optional. Base64-encoded encrypted Telegram Passport element data provided by the user, available for “personal_details”, “passport”, “driver_license”, “identity_card”, “internal_passport” and “address” types. Can be decrypted and verified using the accompanying EncryptedCredentials.
	data string
	// phone_number Optional. User's verified phone number, available only for “phone_number” type
	phone_number string
	// email Optional. User's verified email address, available only for “email” type
	email string
	// files Optional. Array of encrypted files with documents provided by the user, available for “utility_bill”, “bank_statement”, “rental_agreement”, “passport_registration” and “temporary_registration” types. Files can be decrypted and verified using the accompanying EncryptedCredentials.
	files []PassportFile
	// front_side Optional. Encrypted file with the front side of the document, provided by the user. Available for “passport”, “driver_license”, “identity_card” and “internal_passport”. The file can be decrypted and verified using the accompanying EncryptedCredentials.
	front_side PassportFile
	// reverse_side Optional. Encrypted file with the reverse side of the document, provided by the user. Available for “driver_license” and “identity_card”. The file can be decrypted and verified using the accompanying EncryptedCredentials.
	reverse_side PassportFile
	// selfie Optional. Encrypted file with the selfie of the user holding a document, provided by the user; available for “passport”, “driver_license”, “identity_card” and “internal_passport”. The file can be decrypted and verified using the accompanying EncryptedCredentials.
	selfie PassportFile
	// translation Optional. Array of encrypted files with translated versions of documents provided by the user. Available if requested for “passport”, “driver_license”, “identity_card”, “internal_passport”, “utility_bill”, “bank_statement”, “rental_agreement”, “passport_registration” and “temporary_registration” types. Files can be decrypted and verified using the accompanying EncryptedCredentials.
	translation []PassportFile
	// hash Base64-encoded element hash for using in PassportElementErrorUnspecified
	hash string
}
```

EncryptedPassportElement Describes documents or other Telegram Passport elements shared with the bot by the user.

[[Return to contents]](#Contents)

## ExportChatInviteLink

```v
struct ExportChatInviteLink {
	// chat_id Unique identifier for the target chat or username of the target channel (in the format @channelusername)
	chat_id i64
}
```

[[Return to contents]](#Contents)

## File

```v
struct File {
pub:
	// file_id Identifier for this file, which can be used to download or reuse the file
	file_id string
	// file_unique_id Unique identifier for this file, which is supposed to be the same over time and for different bots. Can't be used to download or reuse the file.
	file_unique_id string
	// file_size Optional. File size in bytes. It can be bigger than 2^31 and some programming languages may have difficulty/silent defects in interpreting it. But it has at most 52 significant bits, so a signed 64-bit integer or double-precision float type are safe for storing this value.
	file_size i64
	// file_path Optional. File path. Use https://api.telegram.org/file/bot<token>/<file_path> to get the file.
	file_path string
}
```

File This object represents a file ready to be downloaded. The file can be downloaded via the link https://api.telegram.org/file/bot<token>/<file_path>. It is guaranteed that the link will be valid for at least 1 hour. When the link expires, a new one can be requested by calling getFile.

[[Return to contents]](#Contents)

## ForceReply

```v
struct ForceReply {
pub:
	// force_reply Shows reply interface to the user, as if they manually selected the bot's message and tapped 'Reply'
	force_reply bool
	// input_field_placeholder Optional. The placeholder to be shown in the input field when the reply is active; 1-64 characters
	input_field_placeholder string
	// selective Optional. Use this parameter if you want to force reply from specific users only. Targets: 1) users that are @mentioned in the text of the Message object; 2) if the bot's message is a reply (has reply_to_message_id), sender of the original message.
	selective bool
}
```

ForceReply Upon receiving a message with this object, Telegram clients will display a reply interface to the user (act as if the user has selected the bot's message and tapped 'Reply'). This can be extremely useful if you want to create user-friendly step-by-step interfaces without having to sacrifice privacy mode.

[[Return to contents]](#Contents)

## ForumTopic

```v
struct ForumTopic {
pub:
	// message_thread_id Unique identifier of the forum topic
	message_thread_id int
	// name Name of the topic
	name string
	// icon_color Color of the topic icon in RGB format
	icon_color int
	// icon_custom_emoji_id Optional. Unique identifier of the custom emoji shown as the topic icon
	icon_custom_emoji_id string
}
```

ForumTopic This object represents a forum topic.

[[Return to contents]](#Contents)

## ForumTopicClosed

```v
struct ForumTopicClosed {
}
```

ForumTopicClosed This object represents a service message about a forum topic closed in the chat. Currently holds no information.

[[Return to contents]](#Contents)

## ForumTopicCreated

```v
struct ForumTopicCreated {
pub:
	// name Name of the topic
	name string
	// icon_color Color of the topic icon in RGB format
	icon_color int
	// icon_custom_emoji_id Optional. Unique identifier of the custom emoji shown as the topic icon
	icon_custom_emoji_id string
}
```

ForumTopicCreated This object represents a service message about a new forum topic created in the chat.

[[Return to contents]](#Contents)

## ForumTopicEdited

```v
struct ForumTopicEdited {
pub:
	// name Optional. New name of the topic, if it was edited
	name string
	// icon_custom_emoji_id Optional. New identifier of the custom emoji shown as the topic icon, if it was edited; an empty string if the icon was removed
	icon_custom_emoji_id string
}
```

ForumTopicEdited This object represents a service message about an edited forum topic.

[[Return to contents]](#Contents)

## ForumTopicReopened

```v
struct ForumTopicReopened {
}
```

ForumTopicReopened This object represents a service message about a forum topic reopened in the chat. Currently holds no information.

[[Return to contents]](#Contents)

## ForwardMessage

```v
struct ForwardMessage {
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
```

[[Return to contents]](#Contents)

## Game

```v
struct Game {
pub:
	// title Title of the game
	title string
	// description Description of the game
	description string
	// photo Photo that will be displayed in the game message in chats.
	photo []PhotoSize
	// text Optional. Brief description of the game or high scores included in the game message. Can be automatically edited to include current high scores for the game when the bot calls setGameScore, or manually edited using editMessageText. 0-4096 characters.
	text string
	// text_entities Optional. Special entities that appear in text, such as usernames, URLs, bot commands, etc.
	text_entities []MessageEntity
	// animation Optional. Animation that will be displayed in the game message in chats. Upload via BotFather
	animation Animation
}
```

Game This object represents a game. Use BotFather to create and edit games, their short names will act as unique identifiers.

[[Return to contents]](#Contents)

## GameHighScore

```v
struct GameHighScore {
pub:
	// position Position in high score table for the game
	position int
	// user User
	user User
	// score Score
	score int
}
```

GameHighScore This object represents one row of the high scores table for a game.

[[Return to contents]](#Contents)

## GeneralForumTopicHidden

```v
struct GeneralForumTopicHidden {
}
```

GeneralForumTopicHidden This object represents a service message about General forum topic hidden in the chat. Currently holds no information.

[[Return to contents]](#Contents)

## GeneralForumTopicUnhidden

```v
struct GeneralForumTopicUnhidden {
}
```

GeneralForumTopicUnhidden This object represents a service message about General forum topic unhidden in the chat. Currently holds no information.

[[Return to contents]](#Contents)

## GetChat

```v
struct GetChat {
	// chat_id Unique identifier for the target chat or username of the target supergroup or channel (in the format @channelusername)
	chat_id i64
}
```

[[Return to contents]](#Contents)

## GetChatAdministrators

```v
struct GetChatAdministrators {
	// chat_id Unique identifier for the target chat or username of the target supergroup or channel (in the format @channelusername)
	chat_id i64
}
```

[[Return to contents]](#Contents)

## GetChatMember

```v
struct GetChatMember {
	// chat_id Unique identifier for the target chat or username of the target supergroup or channel (in the format @channelusername)
	chat_id i64
	// user_id Unique identifier of the target user
	user_id int
}
```

[[Return to contents]](#Contents)

## GetChatMemberCount

```v
struct GetChatMemberCount {
	// chat_id Unique identifier for the target chat or username of the target supergroup or channel (in the format @channelusername)
	chat_id i64
}
```

[[Return to contents]](#Contents)

## GetChatMenuButton

```v
struct GetChatMenuButton {
	// chat_id Unique identifier for the target private chat. If not specified, default bot's menu button will be returned
	chat_id i64
}
```

[[Return to contents]](#Contents)

## GetCustomEmojiStickers

```v
struct GetCustomEmojiStickers {
	// custom_emoji_ids List of custom emoji identifiers. At most 200 custom emoji identifiers can be specified.
	custom_emoji_ids []string
}
```

[[Return to contents]](#Contents)

## GetFile

```v
struct GetFile {
	// file_id File identifier to get information about
	file_id string
}
```

[[Return to contents]](#Contents)

## GetForumTopicIconStickers

```v
struct GetForumTopicIconStickers {
	// chat_id Unique identifier for the target chat or username of the target supergroup (in the format @supergroupusername)
	chat_id i64
	// name Topic name, 1-128 characters
	name string
	// icon_color Color of the topic icon in RGB format. Currently, must be one of 7322096 (0x6FB9F0), 16766590 (0xFFD67E), 13338331 (0xCB86DB), 9367192 (0x8EEE98), 16749490 (0xFF93B2), or 16478047 (0xFB6F5F)
	icon_color int
	// icon_custom_emoji_id Unique identifier of the custom emoji shown as the topic icon. Use getForumTopicIconStickers to get all allowed custom emoji identifiers.
	icon_custom_emoji_id string
}
```

[[Return to contents]](#Contents)

## GetGameHighScores

```v
struct GetGameHighScores {
	// user_id Target user id
	user_id int
	// chat_id Required if inline_message_id is not specified. Unique identifier for the target chat
	chat_id i64
	// message_id Required if inline_message_id is not specified. Identifier of the sent message
	message_id int
	// inline_message_id Required if chat_id and message_id are not specified. Identifier of the inline message
	inline_message_id string
}
```

[[Return to contents]](#Contents)

## GetMe

```v
struct GetMe {
}
```

[[Return to contents]](#Contents)

## GetMyCommands

```v
struct GetMyCommands {
	// scope Optional	A JSON-serialized object, describing scope of users. Defaults to BotCommandScopeDefault.
	scope BotCommandScope
	// language_code Optional	A two-letter ISO 639-1 language code or an empty string
	language_code string
}
```

[[Return to contents]](#Contents)

## GetMyDefaultAdministratorRights

```v
struct GetMyDefaultAdministratorRights {
	// for_channels Pass True to get default administrator rights of the bot in channels. Otherwise, default administrator rights of the bot for groups and supergroups will be returned.
	for_channels bool
}
```

[[Return to contents]](#Contents)

## GetStickerSet

```v
struct GetStickerSet {
	// name Name of the sticker set
	name string
}
```

[[Return to contents]](#Contents)

## GetUpdates

```v
struct GetUpdates {
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
```

[[Return to contents]](#Contents)

## GetUserProfilePhotos

```v
struct GetUserProfilePhotos {
	// user_id Unique identifier of the target user
	user_id int
	// offset Sequential number of the first photo to be returned. By default, all photos are returned.
	offset int
	// limit Limits the number of photos to be retrieved. Values between 1-100 are accepted. Defaults to 100.
	limit int
}
```

[[Return to contents]](#Contents)

## GetWebhookInfo

```v
struct GetWebhookInfo {
}
```

[[Return to contents]](#Contents)

## HideGeneralForumTopic

```v
struct HideGeneralForumTopic {
	// chat_id Unique identifier for the target chat or username of the target supergroup (in the format @supergroupusername)
	chat_id i64
}
```

[[Return to contents]](#Contents)

## InlineKeyboardButton

```v
struct InlineKeyboardButton {
pub:
	// text Label text on the button
	text string
	// url Optional. HTTP or tg:// URL to be opened when the button is pressed. Links tg://user?id=<user_id> can be used to mention a user by their ID without using a username, if this is allowed by their privacy settings.
	url string
	// callback_data Optional. Data to be sent in a callback query to the bot when button is pressed, 1-64 bytes
	callback_data string
	// web_app Optional. Description of the Web App that will be launched when the user presses the button. The Web App will be able to send an arbitrary message on behalf of the user using the method answerWebAppQuery. Available only in private chats between a user and the bot.
	web_app WebAppInfo
	// login_url Optional. An HTTPS URL used to automatically authorize the user. Can be used as a replacement for the Telegram Login Widget.
	login_url LoginUrl
	// switch_inline_query Optional. If set, pressing the button will prompt the user to select one of their chats, open that chat and insert the bot's username and the specified inline query in the input field. May be empty, in which case just the bot's username will be inserted.  Note: This offers an easy way for users to start using your bot in inline mode when they are currently in a private chat with it.
	// Especially useful when combined with switch_pm… actions - in this case the user will be automatically returned to the chat they switched from, skipping the chat selection screen.
	switch_inline_query string
	// switch_inline_query_current_chat Optional. If set, pressing the button will insert the bot's username and the specified inline query in the current chat's input field. May be empty, in which case only the bot's username will be inserted.  This offers a quick way for the user to open your bot in inline mode in the same chat - good for selecting something from multiple options.
	switch_inline_query_current_chat string
	// callback_game Optional. Description of the game that will be launched when the user presses the button.  NOTE: This type of button must always be the first button in the first row.
	callback_game CallbackGame
	// pay Optional. Specify True, to send a Pay button.  NOTE: This type of button must always be the first button in the first row and can only be used in invoice messages.
	pay bool
}
```

InlineKeyboardButton This object represents one button of an inline keyboard. You must use exactly one of the optional fields.

[[Return to contents]](#Contents)

## InlineKeyboardMarkup

```v
struct InlineKeyboardMarkup {
pub:
	// inline_keyboard Array of button rows, each represented by an Array of InlineKeyboardButton objects
	inline_keyboard [][]InlineKeyboardButton
}
```

InlineKeyboardMarkup This object represents an inline keyboard that appears right next to the message it belongs to.

[[Return to contents]](#Contents)

## InlineQuery

```v
struct InlineQuery {
pub:
	// id Unique identifier for this query
	id string
	// from Sender
	from User
	// query Text of the query (up to 256 characters)
	query string
	// offset Offset of the results to be returned, can be controlled by the bot
	offset string
	// chat_type Optional. Type of the chat from which the inline query was sent. Can be either “sender” for a private chat with the inline query sender, “private”, “group”, “supergroup”, or “channel”. The chat type should be always known for requests sent from official clients and most third-party clients, unless the request was sent from a secret chat
	chat_type string
	// location Optional. Sender location, only for bots that request user location
	location Location
}
```

InlineQuery This object represents an incoming inline query. When the user sends an empty query, your bot could return some default or trending results.

[[Return to contents]](#Contents)

## InlineQueryResultArticle

```v
struct InlineQueryResultArticle {
pub:
	// type Type of the result, must be article
	@type string
	// id Unique identifier for this result, 1-64 Bytes
	id string
	// title Title of the result
	title string
	// input_message_content Content of the message to be sent
	input_message_content InputMessageContent
	// reply_markup Optional. Inline keyboard attached to the message
	reply_markup InlineKeyboardMarkup
	// url Optional. URL of the result
	url string
	// hide_url Optional. Pass True if you don't want the URL to be shown in the message
	hide_url bool
	// description Optional. Short description of the result
	description string
	// thumb_url Optional. Url of the thumbnail for the result
	thumb_url string
	// thumb_width Optional. Thumbnail width
	thumb_width int
	// thumb_height Optional. Thumbnail height
	thumb_height int
}
```

InlineQueryResultArticle Represents a link to an article or web page.

[[Return to contents]](#Contents)

## InlineQueryResultAudio

```v
struct InlineQueryResultAudio {
pub:
	// type Type of the result, must be audio
	@type string
	// id Unique identifier for this result, 1-64 bytes
	id string
	// audio_url A valid URL for the audio file
	audio_url string
	// title Title
	title string
	// caption Optional. Caption, 0-1024 characters after entities parsing
	caption string
	// parse_mode Optional. Mode for parsing entities in the audio caption. See formatting options for more details.
	parse_mode string
	// caption_entities Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
	caption_entities []MessageEntity
	// performer Optional. Performer
	performer string
	// audio_duration Optional. Audio duration in seconds
	audio_duration int
	// reply_markup Optional. Inline keyboard attached to the message
	reply_markup InlineKeyboardMarkup
	// input_message_content Optional. Content of the message to be sent instead of the audio
	input_message_content InputMessageContent
}
```

InlineQueryResultAudio Represents a link to an MP3 audio file. By default, this audio file will be sent by the user. Alternatively, you can use input_message_content to send a message with the specified content instead of the audio.

[[Return to contents]](#Contents)

## InlineQueryResultCachedAudio

```v
struct InlineQueryResultCachedAudio {
pub:
	// type Type of the result, must be audio
	@type string
	// id Unique identifier for this result, 1-64 bytes
	id string
	// audio_file_id A valid file identifier for the audio file
	audio_file_id string
	// caption Optional. Caption, 0-1024 characters after entities parsing
	caption string
	// parse_mode Optional. Mode for parsing entities in the audio caption. See formatting options for more details.
	parse_mode string
	// caption_entities Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
	caption_entities []MessageEntity
	// reply_markup Optional. Inline keyboard attached to the message
	reply_markup InlineKeyboardMarkup
	// input_message_content Optional. Content of the message to be sent instead of the audio
	input_message_content InputMessageContent
}
```

InlineQueryResultCachedAudio Represents a link to an MP3 audio file stored on the Telegram servers. By default, this audio file will be sent by the user. Alternatively, you can use input_message_content to send a message with the specified content instead of the audio.

[[Return to contents]](#Contents)

## InlineQueryResultCachedDocument

```v
struct InlineQueryResultCachedDocument {
pub:
	// type Type of the result, must be document
	@type string
	// id Unique identifier for this result, 1-64 bytes
	id string
	// title Title for the result
	title string
	// document_file_id A valid file identifier for the file
	document_file_id string
	// description Optional. Short description of the result
	description string
	// caption Optional. Caption of the document to be sent, 0-1024 characters after entities parsing
	caption string
	// parse_mode Optional. Mode for parsing entities in the document caption. See formatting options for more details.
	parse_mode string
	// caption_entities Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
	caption_entities []MessageEntity
	// reply_markup Optional. Inline keyboard attached to the message
	reply_markup InlineKeyboardMarkup
	// input_message_content Optional. Content of the message to be sent instead of the file
	input_message_content InputMessageContent
}
```

InlineQueryResultCachedDocument Represents a link to a file stored on the Telegram servers. By default, this file will be sent by the user with an optional caption. Alternatively, you can use input_message_content to send a message with the specified content instead of the file.

[[Return to contents]](#Contents)

## InlineQueryResultCachedGif

```v
struct InlineQueryResultCachedGif {
pub:
	// type Type of the result, must be gif
	@type string
	// id Unique identifier for this result, 1-64 bytes
	id string
	// gif_file_id A valid file identifier for the GIF file
	gif_file_id string
	// title Optional. Title for the result
	title string
	// caption Optional. Caption of the GIF file to be sent, 0-1024 characters after entities parsing
	caption string
	// parse_mode Optional. Mode for parsing entities in the caption. See formatting options for more details.
	parse_mode string
	// caption_entities Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
	caption_entities []MessageEntity
	// reply_markup Optional. Inline keyboard attached to the message
	reply_markup InlineKeyboardMarkup
	// input_message_content Optional. Content of the message to be sent instead of the GIF animation
	input_message_content InputMessageContent
}
```

InlineQueryResultCachedGif Represents a link to an animated GIF file stored on the Telegram servers. By default, this animated GIF file will be sent by the user with an optional caption. Alternatively, you can use input_message_content to send a message with specified content instead of the animation.

[[Return to contents]](#Contents)

## InlineQueryResultCachedMpeg4Gif

```v
struct InlineQueryResultCachedMpeg4Gif {
pub:
	// type Type of the result, must be mpeg4_gif
	@type string
	// id Unique identifier for this result, 1-64 bytes
	id string
	// mpeg4_file_id A valid file identifier for the MPEG4 file
	mpeg4_file_id string
	// title Optional. Title for the result
	title string
	// caption Optional. Caption of the MPEG-4 file to be sent, 0-1024 characters after entities parsing
	caption string
	// parse_mode Optional. Mode for parsing entities in the caption. See formatting options for more details.
	parse_mode string
	// caption_entities Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
	caption_entities []MessageEntity
	// reply_markup Optional. Inline keyboard attached to the message
	reply_markup InlineKeyboardMarkup
	// input_message_content Optional. Content of the message to be sent instead of the video animation
	input_message_content InputMessageContent
}
```

InlineQueryResultCachedMpeg4Gif Represents a link to a video animation (H.264/MPEG-4 AVC video without sound) stored on the Telegram servers. By default, this animated MPEG-4 file will be sent by the user with an optional caption. Alternatively, you can use input_message_content to send a message with the specified content instead of the animation.

[[Return to contents]](#Contents)

## InlineQueryResultCachedPhoto

```v
struct InlineQueryResultCachedPhoto {
pub:
	// type Type of the result, must be photo
	@type string
	// id Unique identifier for this result, 1-64 bytes
	id string
	// photo_file_id A valid file identifier of the photo
	photo_file_id string
	// title Optional. Title for the result
	title string
	// description Optional. Short description of the result
	description string
	// caption Optional. Caption of the photo to be sent, 0-1024 characters after entities parsing
	caption string
	// parse_mode Optional. Mode for parsing entities in the photo caption. See formatting options for more details.
	parse_mode string
	// caption_entities Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
	caption_entities []MessageEntity
	// reply_markup Optional. Inline keyboard attached to the message
	reply_markup InlineKeyboardMarkup
	// input_message_content Optional. Content of the message to be sent instead of the photo
	input_message_content InputMessageContent
}
```

InlineQueryResultCachedPhoto Represents a link to a photo stored on the Telegram servers. By default, this photo will be sent by the user with an optional caption. Alternatively, you can use input_message_content to send a message with the specified content instead of the photo.

[[Return to contents]](#Contents)

## InlineQueryResultCachedSticker

```v
struct InlineQueryResultCachedSticker {
pub:
	// type Type of the result, must be sticker
	@type string
	// id Unique identifier for this result, 1-64 bytes
	id string
	// sticker_file_id A valid file identifier of the sticker
	sticker_file_id string
	// reply_markup Optional. Inline keyboard attached to the message
	reply_markup InlineKeyboardMarkup
	// input_message_content Optional. Content of the message to be sent instead of the sticker
	input_message_content InputMessageContent
}
```

InlineQueryResultCachedSticker Represents a link to a sticker stored on the Telegram servers. By default, this sticker will be sent by the user. Alternatively, you can use input_message_content to send a message with the specified content instead of the sticker.

[[Return to contents]](#Contents)

## InlineQueryResultCachedVideo

```v
struct InlineQueryResultCachedVideo {
pub:
	// type Type of the result, must be video
	@type string
	// id Unique identifier for this result, 1-64 bytes
	id string
	// video_file_id A valid file identifier for the video file
	video_file_id string
	// title Title for the result
	title string
	// description Optional. Short description of the result
	description string
	// caption Optional. Caption of the video to be sent, 0-1024 characters after entities parsing
	caption string
	// parse_mode Optional. Mode for parsing entities in the video caption. See formatting options for more details.
	parse_mode string
	// caption_entities Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
	caption_entities []MessageEntity
	// reply_markup Optional. Inline keyboard attached to the message
	reply_markup InlineKeyboardMarkup
	// input_message_content Optional. Content of the message to be sent instead of the video
	input_message_content InputMessageContent
}
```

InlineQueryResultCachedVideo Represents a link to a video file stored on the Telegram servers. By default, this video file will be sent by the user with an optional caption. Alternatively, you can use input_message_content to send a message with the specified content instead of the video.

[[Return to contents]](#Contents)

## InlineQueryResultCachedVoice

```v
struct InlineQueryResultCachedVoice {
pub:
	// type Type of the result, must be voice
	@type string
	// id Unique identifier for this result, 1-64 bytes
	id string
	// voice_file_id A valid file identifier for the voice message
	voice_file_id string
	// title Voice message title
	title string
	// caption Optional. Caption, 0-1024 characters after entities parsing
	caption string
	// parse_mode Optional. Mode for parsing entities in the voice message caption. See formatting options for more details.
	parse_mode string
	// caption_entities Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
	caption_entities []MessageEntity
	// reply_markup Optional. Inline keyboard attached to the message
	reply_markup InlineKeyboardMarkup
	// input_message_content Optional. Content of the message to be sent instead of the voice message
	input_message_content InputMessageContent
}
```

InlineQueryResultCachedVoice Represents a link to a voice message stored on the Telegram servers. By default, this voice message will be sent by the user. Alternatively, you can use input_message_content to send a message with the specified content instead of the voice message.

[[Return to contents]](#Contents)

## InlineQueryResultContact

```v
struct InlineQueryResultContact {
pub:
	// type Type of the result, must be contact
	@type string
	// id Unique identifier for this result, 1-64 Bytes
	id string
	// phone_number Contact's phone number
	phone_number string
	// first_name Contact's first name
	first_name string
	// last_name Optional. Contact's last name
	last_name string
	// vcard Optional. Additional data about the contact in the form of a vCard, 0-2048 bytes
	vcard string
	// reply_markup Optional. Inline keyboard attached to the message
	reply_markup InlineKeyboardMarkup
	// input_message_content Optional. Content of the message to be sent instead of the contact
	input_message_content InputMessageContent
	// thumb_url Optional. Url of the thumbnail for the result
	thumb_url string
	// thumb_width Optional. Thumbnail width
	thumb_width int
	// thumb_height Optional. Thumbnail height
	thumb_height int
}
```

InlineQueryResultContact Represents a contact with a phone number. By default, this contact will be sent by the user. Alternatively, you can use input_message_content to send a message with the specified content instead of the contact.

[[Return to contents]](#Contents)

## InlineQueryResultDocument

```v
struct InlineQueryResultDocument {
pub:
	// type Type of the result, must be document
	@type string
	// id Unique identifier for this result, 1-64 bytes
	id string
	// title Title for the result
	title string
	// caption Optional. Caption of the document to be sent, 0-1024 characters after entities parsing
	caption string
	// parse_mode Optional. Mode for parsing entities in the document caption. See formatting options for more details.
	parse_mode string
	// caption_entities Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
	caption_entities []MessageEntity
	// document_url A valid URL for the file
	document_url string
	// mime_type MIME type of the content of the file, either “application/pdf” or “application/zip”
	mime_type string
	// description Optional. Short description of the result
	description string
	// reply_markup Optional. Inline keyboard attached to the message
	reply_markup InlineKeyboardMarkup
	// input_message_content Optional. Content of the message to be sent instead of the file
	input_message_content InputMessageContent
	// thumb_url Optional. URL of the thumbnail (JPEG only) for the file
	thumb_url string
	// thumb_width Optional. Thumbnail width
	thumb_width int
	// thumb_height Optional. Thumbnail height
	thumb_height int
}
```

InlineQueryResultDocument Represents a link to a file. By default, this file will be sent by the user with an optional caption. Alternatively, you can use input_message_content to send a message with the specified content instead of the file. Currently, only .PDF and .ZIP files can be sent using this method.

[[Return to contents]](#Contents)

## InlineQueryResultGame

```v
struct InlineQueryResultGame {
pub:
	// type Type of the result, must be game
	@type string
	// id Unique identifier for this result, 1-64 bytes
	id string
	// game_short_name Short name of the game
	game_short_name string
	// reply_markup Optional. Inline keyboard attached to the message
	reply_markup InlineKeyboardMarkup
}
```

InlineQueryResultGame Represents a Game.

[[Return to contents]](#Contents)

## InlineQueryResultGif

```v
struct InlineQueryResultGif {
pub:
	// type Type of the result, must be gif
	@type string
	// id Unique identifier for this result, 1-64 bytes
	id string
	// gif_url A valid URL for the GIF file. File size must not exceed 1MB
	gif_url string
	// gif_width Optional. Width of the GIF
	gif_width int
	// gif_height Optional. Height of the GIF
	gif_height int
	// gif_duration Optional. Duration of the GIF in seconds
	gif_duration int
	// thumb_url URL of the static (JPEG or GIF) or animated (MPEG4) thumbnail for the result
	thumb_url string
	// thumb_mime_type Optional. MIME type of the thumbnail, must be one of “image/jpeg”, “image/gif”, or “video/mp4”. Defaults to “image/jpeg”
	thumb_mime_type string
	// title Optional. Title for the result
	title string
	// caption Optional. Caption of the GIF file to be sent, 0-1024 characters after entities parsing
	caption string
	// parse_mode Optional. Mode for parsing entities in the caption. See formatting options for more details.
	parse_mode string
	// caption_entities Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
	caption_entities []MessageEntity
	// reply_markup Optional. Inline keyboard attached to the message
	reply_markup InlineKeyboardMarkup
	// input_message_content Optional. Content of the message to be sent instead of the GIF animation
	input_message_content InputMessageContent
}
```

InlineQueryResultGif Represents a link to an animated GIF file. By default, this animated GIF file will be sent by the user with optional caption. Alternatively, you can use input_message_content to send a message with the specified content instead of the animation.

[[Return to contents]](#Contents)

## InlineQueryResultLocation

```v
struct InlineQueryResultLocation {
pub:
	// type Type of the result, must be location
	@type string
	// id Unique identifier for this result, 1-64 Bytes
	id string
	// latitude Location latitude in degrees
	latitude f32
	// longitude Location longitude in degrees
	longitude f32
	// title Location title
	title string
	// horizontal_accuracy Optional. The radius of uncertainty for the location, measured in meters; 0-1500
	horizontal_accuracy f32
	// live_period Optional. Period in seconds for which the location can be updated, should be between 60 and 86400.
	live_period int
	// heading Optional. For live locations, a direction in which the user is moving, in degrees. Must be between 1 and 360 if specified.
	heading int
	// proximity_alert_radius Optional. For live locations, a maximum distance for proximity alerts about approaching another chat member, in meters. Must be between 1 and 100000 if specified.
	proximity_alert_radius int
	// reply_markup Optional. Inline keyboard attached to the message
	reply_markup InlineKeyboardMarkup
	// input_message_content Optional. Content of the message to be sent instead of the location
	input_message_content InputMessageContent
	// thumb_url Optional. Url of the thumbnail for the result
	thumb_url string
	// thumb_width Optional. Thumbnail width
	thumb_width int
	// thumb_height Optional. Thumbnail height
	thumb_height int
}
```

InlineQueryResultLocation Represents a location on a map. By default, the location will be sent by the user. Alternatively, you can use input_message_content to send a message with the specified content instead of the location.

[[Return to contents]](#Contents)

## InlineQueryResultMpeg4Gif

```v
struct InlineQueryResultMpeg4Gif {
pub:
	// type Type of the result, must be mpeg4_gif
	@type string
	// id Unique identifier for this result, 1-64 bytes
	id string
	// mpeg4_url A valid URL for the MPEG4 file. File size must not exceed 1MB
	mpeg4_url string
	// mpeg4_width Optional. Video width
	mpeg4_width int
	// mpeg4_height Optional. Video height
	mpeg4_height int
	// mpeg4_duration Optional. Video duration in seconds
	mpeg4_duration int
	// thumb_url URL of the static (JPEG or GIF) or animated (MPEG4) thumbnail for the result
	thumb_url string
	// thumb_mime_type Optional. MIME type of the thumbnail, must be one of “image/jpeg”, “image/gif”, or “video/mp4”. Defaults to “image/jpeg”
	thumb_mime_type string
	// title Optional. Title for the result
	title string
	// caption Optional. Caption of the MPEG-4 file to be sent, 0-1024 characters after entities parsing
	caption string
	// parse_mode Optional. Mode for parsing entities in the caption. See formatting options for more details.
	parse_mode string
	// caption_entities Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
	caption_entities []MessageEntity
	// reply_markup Optional. Inline keyboard attached to the message
	reply_markup InlineKeyboardMarkup
	// input_message_content Optional. Content of the message to be sent instead of the video animation
	input_message_content InputMessageContent
}
```

InlineQueryResultMpeg4Gif Represents a link to a video animation (H.264/MPEG-4 AVC video without sound). By default, this animated MPEG-4 file will be sent by the user with optional caption. Alternatively, you can use input_message_content to send a message with the specified content instead of the animation.

[[Return to contents]](#Contents)

## InlineQueryResultPhoto

```v
struct InlineQueryResultPhoto {
pub:
	// type Type of the result, must be photo
	@type string
	// id Unique identifier for this result, 1-64 bytes
	id string
	// photo_url A valid URL of the photo. Photo must be in JPEG format. Photo size must not exceed 5MB
	photo_url string
	// thumb_url URL of the thumbnail for the photo
	thumb_url string
	// photo_width Optional. Width of the photo
	photo_width int
	// photo_height Optional. Height of the photo
	photo_height int
	// title Optional. Title for the result
	title string
	// description Optional. Short description of the result
	description string
	// caption Optional. Caption of the photo to be sent, 0-1024 characters after entities parsing
	caption string
	// parse_mode Optional. Mode for parsing entities in the photo caption. See formatting options for more details.
	parse_mode string
	// caption_entities Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
	caption_entities []MessageEntity
	// reply_markup Optional. Inline keyboard attached to the message
	reply_markup InlineKeyboardMarkup
	// input_message_content Optional. Content of the message to be sent instead of the photo
	input_message_content InputMessageContent
}
```

InlineQueryResultPhoto Represents a link to a photo. By default, this photo will be sent by the user with optional caption. Alternatively, you can use input_message_content to send a message with the specified content instead of the photo.

[[Return to contents]](#Contents)

## InlineQueryResultVenue

```v
struct InlineQueryResultVenue {
pub:
	// type Type of the result, must be venue
	@type string
	// id Unique identifier for this result, 1-64 Bytes
	id string
	// latitude Latitude of the venue location in degrees
	latitude f32
	// longitude Longitude of the venue location in degrees
	longitude f32
	// title Title of the venue
	title string
	// address Address of the venue
	address string
	// foursquare_id Optional. Foursquare identifier of the venue if known
	foursquare_id string
	// foursquare_type Optional. Foursquare type of the venue, if known. (For example, “arts_entertainment/default”, “arts_entertainment/aquarium” or “food/icecream”.)
	foursquare_type string
	// google_place_id Optional. Google Places identifier of the venue
	google_place_id string
	// google_place_type Optional. Google Places type of the venue. (See supported types.)
	google_place_type string
	// reply_markup Optional. Inline keyboard attached to the message
	reply_markup InlineKeyboardMarkup
	// input_message_content Optional. Content of the message to be sent instead of the venue
	input_message_content InputMessageContent
	// thumb_url Optional. Url of the thumbnail for the result
	thumb_url string
	// thumb_width Optional. Thumbnail width
	thumb_width int
	// thumb_height Optional. Thumbnail height
	thumb_height int
}
```

InlineQueryResultVenue Represents a venue. By default, the venue will be sent by the user. Alternatively, you can use input_message_content to send a message with the specified content instead of the venue.

[[Return to contents]](#Contents)

## InlineQueryResultVideo

```v
struct InlineQueryResultVideo {
pub:
	// type Type of the result, must be video
	@type string
	// id Unique identifier for this result, 1-64 bytes
	id string
	// video_url A valid URL for the embedded video player or video file
	video_url string
	// mime_type MIME type of the content of the video URL, “text/html” or “video/mp4”
	mime_type string
	// thumb_url URL of the thumbnail (JPEG only) for the video
	thumb_url string
	// title Title for the result
	title string
	// caption Optional. Caption of the video to be sent, 0-1024 characters after entities parsing
	caption string
	// parse_mode Optional. Mode for parsing entities in the video caption. See formatting options for more details.
	parse_mode string
	// caption_entities Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
	caption_entities []MessageEntity
	// video_width Optional. Video width
	video_width int
	// video_height Optional. Video height
	video_height int
	// video_duration Optional. Video duration in seconds
	video_duration int
	// description Optional. Short description of the result
	description string
	// reply_markup Optional. Inline keyboard attached to the message
	reply_markup InlineKeyboardMarkup
	// input_message_content Optional. Content of the message to be sent instead of the video. This field is required if InlineQueryResultVideo is used to send an HTML-page as a result (e.g., a YouTube video).
	input_message_content InputMessageContent
}
```

InlineQueryResultVideo Represents a link to a page containing an embedded video player or a video file. By default, this video file will be sent by the user with an optional caption. Alternatively, you can use input_message_content to send a message with the specified content instead of the video.

[[Return to contents]](#Contents)

## InlineQueryResultVoice

```v
struct InlineQueryResultVoice {
pub:
	// type Type of the result, must be voice
	@type string
	// id Unique identifier for this result, 1-64 bytes
	id string
	// voice_url A valid URL for the voice recording
	voice_url string
	// title Recording title
	title string
	// caption Optional. Caption, 0-1024 characters after entities parsing
	caption string
	// parse_mode Optional. Mode for parsing entities in the voice message caption. See formatting options for more details.
	parse_mode string
	// caption_entities Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
	caption_entities []MessageEntity
	// voice_duration Optional. Recording duration in seconds
	voice_duration int
	// reply_markup Optional. Inline keyboard attached to the message
	reply_markup InlineKeyboardMarkup
	// input_message_content Optional. Content of the message to be sent instead of the voice recording
	input_message_content InputMessageContent
}
```

InlineQueryResultVoice Represents a link to a voice recording in an .OGG container encoded with OPUS. By default, this voice recording will be sent by the user. Alternatively, you can use input_message_content to send a message with the specified content instead of the the voice message.

[[Return to contents]](#Contents)

## InputContactMessageContent

```v
struct InputContactMessageContent {
pub:
	// phone_number Contact's phone number
	phone_number string
	// first_name Contact's first name
	first_name string
	// last_name Optional. Contact's last name
	last_name string
	// vcard Optional. Additional data about the contact in the form of a vCard, 0-2048 bytes
	vcard string
}
```

InputContactMessageContent Represents the content of a contact message to be sent as the result of an inline query.

[[Return to contents]](#Contents)

## InputFile

```v
struct InputFile {
pub:
	// chat_id Unique identifier for the target chat or username of the target channel (in the format @channelusername)
	chat_id string
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
	// reply_markup Additional interface options. A JSON-serialized object for an inline keyboard, custom reply keyboard, instructions to remove reply keyboard or to force a reply from the user.
	reply_markup ForceReply
}
```

InputFile This object represents the contents of a file to be uploaded. Must be posted using multipart/form-data in the usual way that files are uploaded via the browser.

[[Return to contents]](#Contents)

## InputInvoiceMessageContent

```v
struct InputInvoiceMessageContent {
pub:
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
	// max_tip_amount Optional. The maximum accepted amount for tips in the smallest units of the currency (integer, not float/double). For example, for a maximum tip of US$ 1.45 pass max_tip_amount = 145. See the exp parameter in currencies.json, it shows the number of digits past the decimal point for each currency (2 for the majority of currencies). Defaults to 0
	max_tip_amount int
	// suggested_tip_amounts Optional. A JSON-serialized array of suggested amounts of tip in the smallest units of the currency (integer, not float/double). At most 4 suggested tip amounts can be specified. The suggested tip amounts must be positive, passed in a strictly increased order and must not exceed max_tip_amount.
	suggested_tip_amounts []int
	// provider_data Optional. A JSON-serialized object for data about the invoice, which will be shared with the payment provider. A detailed description of the required fields should be provided by the payment provider.
	provider_data string
	// photo_url Optional. URL of the product photo for the invoice. Can be a photo of the goods or a marketing image for a service.
	photo_url string
	// photo_size Optional. Photo size in bytes
	photo_size int
	// photo_width Optional. Photo width
	photo_width int
	// photo_height Optional. Photo height
	photo_height int
	// need_name Optional. Pass True if you require the user's full name to complete the order
	need_name bool
	// need_phone_number Optional. Pass True if you require the user's phone number to complete the order
	need_phone_number bool
	// need_email Optional. Pass True if you require the user's email address to complete the order
	need_email bool
	// need_shipping_address Optional. Pass True if you require the user's shipping address to complete the order
	need_shipping_address bool
	// send_phone_number_to_provider Optional. Pass True if the user's phone number should be sent to provider
	send_phone_number_to_provider bool
	// send_email_to_provider Optional. Pass True if the user's email address should be sent to provider
	send_email_to_provider bool
	// is_flexible Optional. Pass True if the final price depends on the shipping method
	is_flexible bool
}
```

InputInvoiceMessageContent Represents the content of an invoice message to be sent as the result of an inline query.

[[Return to contents]](#Contents)

## InputLocationMessageContent

```v
struct InputLocationMessageContent {
pub:
	// latitude Latitude of the location in degrees
	latitude f32
	// longitude Longitude of the location in degrees
	longitude f32
	// horizontal_accuracy Optional. The radius of uncertainty for the location, measured in meters; 0-1500
	horizontal_accuracy f32
	// live_period Optional. Period in seconds for which the location can be updated, should be between 60 and 86400.
	live_period int
	// heading Optional. For live locations, a direction in which the user is moving, in degrees. Must be between 1 and 360 if specified.
	heading int
	// proximity_alert_radius Optional. For live locations, a maximum distance for proximity alerts about approaching another chat member, in meters. Must be between 1 and 100000 if specified.
	proximity_alert_radius int
}
```

InputLocationMessageContent Represents the content of a location message to be sent as the result of an inline query.

[[Return to contents]](#Contents)

## InputMedia

```v
struct InputMedia {
pub:
	// type Type of the result, must be photo
	@type string
	// media File to send. Pass a file_id to send a file that exists on the Telegram servers (recommended), pass an HTTP URL for Telegram to get a file from the Internet, or pass “attach://<file_attach_name>” to upload a new one using multipart/form-data under <file_attach_name> name. More information on Sending Files »
	media string
	// caption Optional. Caption of the photo to be sent, 0-1024 characters after entities parsing
	caption string
	// parse_mode Optional. Mode for parsing entities in the photo caption. See formatting options for more details.
	parse_mode string
	// caption_entities Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
	caption_entities []MessageEntity
	// has_spoiler Optional. Pass True if the photo needs to be covered with a spoiler animation
	has_spoiler bool
}
```

InputMedia This object represents the content of a media message to be sent. It should be one of

[[Return to contents]](#Contents)

## InputMediaAnimation

```v
struct InputMediaAnimation {
pub:
	// type Type of the result, must be animation
	@type string
	// media File to send. Pass a file_id to send a file that exists on the Telegram servers (recommended), pass an HTTP URL for Telegram to get a file from the Internet, or pass “attach://<file_attach_name>” to upload a new one using multipart/form-data under <file_attach_name> name. More information on Sending Files »
	media string
	// thumb Optional. Thumbnail of the file sent; can be ignored if thumbnail generation for the file is supported server-side. The thumbnail should be in JPEG format and less than 200 kB in size.
	// A thumbnail's width and height should not exceed 320. Ignored if the file is not uploaded using multipart/form-data. Thumbnails can't be reused and can be only uploaded as a new file, so you can pass “attach://<file_attach_name>” if the thumbnail was uploaded using multipart/form-data under <file_attach_name>. More information on Sending Files »
	thumb string
	// caption Optional. Caption of the animation to be sent, 0-1024 characters after entities parsing
	caption string
	// parse_mode Optional. Mode for parsing entities in the animation caption. See formatting options for more details.
	parse_mode string
	// caption_entities Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
	caption_entities []MessageEntity
	// width Optional. Animation width
	width int
	// height Optional. Animation height
	height int
	// duration Optional. Animation duration in seconds
	duration int
	// has_spoiler Optional. Pass True if the animation needs to be covered with a spoiler animation
	has_spoiler bool
}
```

InputMediaAnimation Represents an animation file (GIF or H.264/MPEG-4 AVC video without sound) to be sent.

[[Return to contents]](#Contents)

## InputMediaAudio

```v
struct InputMediaAudio {
pub:
	// type Type of the result, must be audio
	@type string
	// media File to send. Pass a file_id to send a file that exists on the Telegram servers (recommended), pass an HTTP URL for Telegram to get a file from the Internet, or pass “attach://<file_attach_name>” to upload a new one using multipart/form-data under <file_attach_name> name. More information on Sending Files »
	media string
	// thumb Optional. Thumbnail of the file sent; can be ignored if thumbnail generation for the file is supported server-side. The thumbnail should be in JPEG format and less than 200 kB in size. A thumbnail's width and height should not exceed 320. Ignored if the file is not uploaded using multipart/form-data.
	// Thumbnails can't be reused and can be only uploaded as a new file, so you can pass “attach://<file_attach_name>” if the thumbnail was uploaded using multipart/form-data under <file_attach_name>. More information on Sending Files »
	thumb string
	// caption Optional. Caption of the audio to be sent, 0-1024 characters after entities parsing
	caption string
	// parse_mode Optional. Mode for parsing entities in the audio caption. See formatting options for more details.
	parse_mode string
	// caption_entities Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
	caption_entities []MessageEntity
	// duration Optional. Duration of the audio in seconds
	duration int
	// performer Optional. Performer of the audio
	performer string
	// title Optional. Title of the audio
	title string
}
```

InputMediaAudio Represents an audio file to be treated as music to be sent.

[[Return to contents]](#Contents)

## InputMediaDocument

```v
struct InputMediaDocument {
pub:
	// type Type of the result, must be document
	@type string
	// media File to send. Pass a file_id to send a file that exists on the Telegram servers (recommended), pass an HTTP URL for Telegram to get a file from the Internet, or pass “attach://<file_attach_name>” to upload a new one using multipart/form-data under <file_attach_name> name. More information on Sending Files »
	media string
	// thumb Optional. Thumbnail of the file sent; can be ignored if thumbnail generation for the file is supported server-side. The thumbnail should be in JPEG format and less than 200 kB in size. A thumbnail's width and height should not exceed 320. Ignored if the file is not uploaded using multipart/form-data.
	// Thumbnails can't be reused and can be only uploaded as a new file, so you can pass “attach://<file_attach_name>” if the thumbnail was uploaded using multipart/form-data under <file_attach_name>. More information on Sending Files »
	thumb string
	// caption Optional. Caption of the document to be sent, 0-1024 characters after entities parsing
	caption string
	// parse_mode Optional. Mode for parsing entities in the document caption. See formatting options for more details.
	parse_mode string
	// caption_entities Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
	caption_entities []MessageEntity
	// disable_content_type_detection Optional. Disables automatic server-side content type detection for files uploaded using multipart/form-data. Always True, if the document is sent as part of an album.
	disable_content_type_detection bool
}
```

InputMediaDocument Represents a general file to be sent.

[[Return to contents]](#Contents)

## InputMediaPhoto

```v
struct InputMediaPhoto {
pub:
	// type Type of the result, must be photo
	@type string
	// media File to send. Pass a file_id to send a file that exists on the Telegram servers (recommended), pass an HTTP URL for Telegram to get a file from the Internet, or pass “attach://<file_attach_name>” to upload a new one using multipart/form-data under <file_attach_name> name. More information on Sending Files »
	media string
	// caption Optional. Caption of the photo to be sent, 0-1024 characters after entities parsing
	caption string
	// parse_mode Optional. Mode for parsing entities in the photo caption. See formatting options for more details.
	parse_mode string
	// caption_entities Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
	caption_entities []MessageEntity
	// has_spoiler Optional. Pass True if the photo needs to be covered with a spoiler animation
	has_spoiler bool
}
```

InputMediaPhoto Represents a photo to be sent.

[[Return to contents]](#Contents)

## InputMediaVideo

```v
struct InputMediaVideo {
pub:
	// type Type of the result, must be video
	@type string
	// media File to send. Pass a file_id to send a file that exists on the Telegram servers (recommended), pass an HTTP URL for Telegram to get a file from the Internet, or pass “attach://<file_attach_name>” to upload a new one using multipart/form-data under <file_attach_name> name. More information on Sending Files »
	media string
	// thumb Optional. Thumbnail of the file sent; can be ignored if thumbnail generation for the file is supported server-side. The thumbnail should be in JPEG format and less than 200 kB in size. A thumbnail's width and height should not exceed 320. Ignored if the file is not uploaded using multipart/form-data.
	// Thumbnails can't be reused and can be only uploaded as a new file, so you can pass “attach://<file_attach_name>” if the thumbnail was uploaded using multipart/form-data under <file_attach_name>. More information on Sending Files »
	thumb string
	// caption Optional. Caption of the video to be sent, 0-1024 characters after entities parsing
	caption string
	// parse_mode Optional. Mode for parsing entities in the video caption. See formatting options for more details.
	parse_mode string
	// caption_entities Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
	caption_entities []MessageEntity
	// width Optional. Video width
	width int
	// height Optional. Video height
	height int
	// duration Optional. Video duration in seconds
	duration int
	// supports_streaming Optional. Pass True if the uploaded video is suitable for streaming
	supports_streaming bool
	// has_spoiler Optional. Pass True if the video needs to be covered with a spoiler animation
	has_spoiler bool
}
```

InputMediaVideo Represents a video to be sent.

[[Return to contents]](#Contents)

## InputTextMessageContent

```v
struct InputTextMessageContent {
pub:
	// message_text Text of the message to be sent, 1-4096 characters
	message_text string
	// parse_mode Optional. Mode for parsing entities in the message text. See formatting options for more details.
	parse_mode string
	// entities Optional. List of special entities that appear in message text, which can be specified instead of parse_mode
	entities []MessageEntity
	// disable_web_page_preview Optional. Disables link previews for links in the sent message
	disable_web_page_preview bool
}
```

InputTextMessageContent Represents the content of a text message to be sent as the result of an inline query.

[[Return to contents]](#Contents)

## InputVenueMessageContent

```v
struct InputVenueMessageContent {
pub:
	// latitude Latitude of the venue in degrees
	latitude f32
	// longitude Longitude of the venue in degrees
	longitude f32
	// title Name of the venue
	title string
	// address Address of the venue
	address string
	// foursquare_id Optional. Foursquare identifier of the venue, if known
	foursquare_id string
	// foursquare_type Optional. Foursquare type of the venue, if known. (For example, “arts_entertainment/default”, “arts_entertainment/aquarium” or “food/icecream”.)
	foursquare_type string
	// google_place_id Optional. Google Places identifier of the venue
	google_place_id string
	// google_place_type Optional. Google Places type of the venue. (See supported types.)
	google_place_type string
}
```

InputVenueMessageContent Represents the content of a venue message to be sent as the result of an inline query.

[[Return to contents]](#Contents)

## Invoice

```v
struct Invoice {
pub:
	// title Product name
	title string
	// description Product description
	description string
	// start_parameter Unique bot deep-linking parameter that can be used to generate this invoice
	start_parameter string
	// currency Three-letter ISO 4217 currency code
	currency string
	// total_amount Total price in the smallest units of the currency (integer, not float/double). For example, for a price of US$ 1.45 pass amount = 145. See the exp parameter in currencies.json, it shows the number of digits past the decimal point for each currency (2 for the majority of currencies).
	total_amount int
}
```

Invoice This object contains basic information about an invoice.

[[Return to contents]](#Contents)

## KeyboardButton

```v
struct KeyboardButton {
pub:
	// text Text of the button. If none of the optional fields are used, it will be sent as a message when the button is pressed
	text string
	// request_user Optional. If specified, pressing the button will open a list of suitable users. Tapping on any user will send their identifier to the bot in a “user_shared” service message. Available in private chats only.
	// request_user KeyboardButtonRequestUser
	// request_chat Optional. If specified, pressing the button will open a list of suitable chats. Tapping on a chat will send its identifier to the bot in a “chat_shared” service message. Available in private chats only.
	// request_chat KeyboardButtonRequestChat
	// request_contact Optional. If True, the user's phone number will be sent as a contact when the button is pressed. Available in private chats only.
	// request_contact bool
	// request_location Optional. If True, the user's current location will be sent when the button is pressed. Available in private chats only.
	// request_location bool
	// request_poll Optional. If specified, the user will be asked to create a poll and send it to the bot when the button is pressed. Available in private chats only.
	// request_poll KeyboardButtonPollType
	// web_app Optional. If specified, the described Web App will be launched when the button is pressed. The Web App will be able to send a “web_app_data” service message. Available in private chats only.
	// web_app WebAppInfo
}
```

KeyboardButton This object represents one button of the reply keyboard. For simple text buttons String can be used instead of this object to specify text of the button. Optional fields web_app, request_contact, request_location, and request_poll are mutually exclusive.

[[Return to contents]](#Contents)

## KeyboardButtonExt

```v
struct KeyboardButtonExt {
pub:
	// text Text of the button. If none of the optional fields are used, it will be sent as a message when the button is pressed
	text string
	// request_user Optional. If specified, pressing the button will open a list of suitable users. Tapping on any user will send their identifier to the bot in a “user_shared” service message. Available in private chats only.
	request_user KeyboardButtonRequestUser
	// request_chat Optional. If specified, pressing the button will open a list of suitable chats. Tapping on a chat will send its identifier to the bot in a “chat_shared” service message. Available in private chats only.
	request_chat KeyboardButtonRequestChat
	// request_contact Optional. If True, the user's phone number will be sent as a contact when the button is pressed. Available in private chats only.
	request_contact bool
	// request_location Optional. If True, the user's current location will be sent when the button is pressed. Available in private chats only.
	request_location bool
	// request_poll Optional. If specified, the user will be asked to create a poll and send it to the bot when the button is pressed. Available in private chats only.
	request_poll KeyboardButtonPollType
	// web_app Optional. If specified, the described Web App will be launched when the button is pressed. The Web App will be able to send a “web_app_data” service message. Available in private chats only.
	web_app WebAppInfo
}
```

KeyboardButtonExt extends KeyboardButton and includes all other parameters

[[Return to contents]](#Contents)

## KeyboardButtonPollType

```v
struct KeyboardButtonPollType {
pub:
	// type Optional. If quiz is passed, the user will be allowed to create only polls in the quiz mode. If regular is passed, only regular polls will be allowed. Otherwise, the user will be allowed to create a poll of any type.
	@type string
}
```

KeyboardButtonPollType This object represents type of a poll, which is allowed to be created and sent when the corresponding button is pressed.

[[Return to contents]](#Contents)

## KeyboardButtonRequestChat

```v
struct KeyboardButtonRequestChat {
pub:
	// request_id Signed 32-bit identifier of the request, which will be received back in the ChatShared object. Must be unique within the message
	request_id int
	// chat_is_channel Pass True to request a channel chat, pass False to request a group or a supergroup chat.
	chat_is_channel bool
	// chat_is_forum Optional. Pass True to request a forum supergroup, pass False to request a non-forum chat. If not specified, no additional restrictions are applied.
	chat_is_forum bool
	// chat_has_username Optional. Pass True to request a supergroup or a channel with a username, pass False to request a chat without a username. If not specified, no additional restrictions are applied.
	chat_has_username bool
	// chat_is_created Optional. Pass True to request a chat owned by the user. Otherwise, no additional restrictions are applied.
	chat_is_created bool
	// chat_is_created Optional. A JSON-serialized object listing the required administrator rights of the user in the chat. The rights must be a superset of bot_administrator_rights. If not specified, no additional restrictions are applied.
	user_administrator_rights ChatAdministratorRights
	// bot_administrator_rights Optional. A JSON-serialized object listing the required administrator rights of the bot in the chat. The rights must be a subset of user_administrator_rights. If not specified, no additional restrictions are applied.
	bot_administrator_rights ChatAdministratorRights
	// bot_is_member Optional. Pass True to request a chat with the bot as a member. Otherwise, no additional restrictions are applied.
	bot_is_member bool
}
```

KeyboardButtonRequestChat This object defines the criteria used to request a suitable chat.
The identifier of the selected chat will be shared with the bot when the corresponding button is pressed.

[[Return to contents]](#Contents)

## KeyboardButtonRequestUser

```v
struct KeyboardButtonRequestUser {
pub:
	// request_id Signed 32-bit identifier of the request, which will be received back in the UserShared object. Must be unique within the message
	request_id int
	// user_is_bot Optional. Pass True to request a bot, pass False to request a regular user. If not specified, no additional restrictions are applied.
	user_is_bot bool
	// user_is_premium Optional. Pass True to request a premium user, pass False to request a non-premium user. If not specified, no additional restrictions are applied.
	user_is_premium bool
}
```

KeyboardButtonRequestUser This object defines the criteria used to request a suitable user.
The identifier of the selected user will be shared with the bot when the corresponding button is pressed.

[[Return to contents]](#Contents)

## LabeledPrice

```v
struct LabeledPrice {
pub:
	// label Portion label
	label string
	// amount Price of the product in the smallest units of the currency (integer, not float/double). For example, for a price of US$ 1.45 pass amount = 145. See the exp parameter in currencies.json, it shows the number of digits past the decimal point for each currency (2 for the majority of currencies).
	amount int
}
```

LabeledPrice This object represents a portion of the price for goods or services.

[[Return to contents]](#Contents)

## LeaveChat

```v
struct LeaveChat {
	// chat_id Unique identifier for the target chat or username of the target supergroup or channel (in the format @channelusername)
	chat_id i64
}
```

[[Return to contents]](#Contents)

## Location

```v
struct Location {
pub:
	// longitude Longitude as defined by sender
	longitude f32
	// latitude Latitude as defined by sender
	latitude f32
	// horizontal_accuracy Optional. The radius of uncertainty for the location, measured in meters; 0-1500
	horizontal_accuracy f32
	// live_period Optional. Time relative to the message sending date, during which the location can be updated; in seconds. For active live locations only.
	live_period int
	// heading Optional. The direction in which user is moving, in degrees; 1-360. For active live locations only.
	heading int
	// proximity_alert_radius Optional. The maximum distance for proximity alerts about approaching another chat member, in meters. For sent live locations only.
	proximity_alert_radius int
}
```

Location This object represents a point on the map.

[[Return to contents]](#Contents)

## LoginUrl

```v
struct LoginUrl {
pub:
	// url An HTTPS URL to be opened with user authorization data added to the query string when the button is pressed. If the user refuses to provide authorization data, the original URL without information about the user will be opened. The data added is the same as described in Receiving authorization data.  NOTE: You must always check the hash of the received data to verify the authentication and the integrity of the data as described in Checking authorization.
	url string
	// forward_text Optional. New text of the button in forwarded messages.
	forward_text string
	// bot_username Optional. Username of a bot, which will be used for user authorization. See Setting up a bot for more details. If not specified, the current bot's username will be assumed. The url's domain must be the same as the domain linked with the bot. See Linking your domain to the bot for more details.
	bot_username string
	// request_write_access Optional. Pass True to request the permission for your bot to send messages to the user.
	request_write_access bool
}
```

LoginUrl This object represents a parameter of the inline keyboard button used to automatically authorize a user. Serves as a great replacement for the Telegram Login Widget when the user is coming from Telegram. All the user needs to do is tap/click a button and confirm that they want to log in:

[[Return to contents]](#Contents)

## LogOut

```v
struct LogOut {
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
```

[[Return to contents]](#Contents)

## MaskPosition

```v
struct MaskPosition {
pub:
	// point The part of the face relative to which the mask should be placed. One of “forehead”, “eyes”, “mouth”, or “chin”.
	point string
	// x_shift Shift by X-axis measured in widths of the mask scaled to the face size, from left to right. For example, choosing -1.0 will place mask just to the left of the default mask position.
	x_shift f32
	// y_shift Shift by Y-axis measured in heights of the mask scaled to the face size, from top to bottom. For example, 1.0 will place the mask just below the default mask position.
	y_shift f32
	// scale Mask scaling coefficient. For example, 2.0 means double size.
	scale f32
}
```

MaskPosition This object describes the position on faces where a mask should be placed by default.

[[Return to contents]](#Contents)

## MenuButtonCommands

```v
struct MenuButtonCommands {
pub:
	// type Type of the button, must be commands
	@type string
}
```

MenuButtonCommands Represents a menu button, which opens the bot's list of commands.

[[Return to contents]](#Contents)

## MenuButtonDefault

```v
struct MenuButtonDefault {
pub:
	// type Type of the button, must be default
	@type string
}
```

MenuButtonDefault Describes that no specific value for the menu button was set.

[[Return to contents]](#Contents)

## MenuButtonWebApp

```v
struct MenuButtonWebApp {
pub:
	// type Type of the button, must be web_app
	@type string
	// text Text on the button
	text string
	// web_app Description of the Web App that will be launched when the user presses the button. The Web App will be able to send an arbitrary message on behalf of the user using the method answerWebAppQuery.
	web_app WebAppInfo
}
```

MenuButtonWebApp Represents a menu button, which launches a Web App.

[[Return to contents]](#Contents)

## Message

```v
struct Message {
pub mut:
	// message_id Unique message identifier inside this chat
	message_id int
	// message_thread_id Optional. Unique identifier of a message thread to which the message belongs; for supergroups only
	message_thread_id int
	// from Optional. Sender of the message; empty for messages sent to channels. For backward compatibility, the field contains a fake sender user in non-channel chats, if the message was sent on behalf of a chat.
	from Chat
	// sender_chat Optional. Sender of the message, sent on behalf of a chat. For example, the channel itself for channel posts, the supergroup itself for messages from anonymous group administrators, the linked channel for messages automatically forwarded to the discussion group. For backward compatibility, the field from contains a fake sender user in non-channel chats, if the message was sent on behalf of a chat.
	sender_chat Chat
	// date Date the message was sent in Unix time
	date int
	// chat Conversation the message belongs to
	chat Chat
	// forward_from Optional. For forwarded messages, sender of the original message
	forward_from User
	// forward_from_chat Optional. For messages forwarded from channels or from anonymous administrators, information about the original sender chat
	forward_from_chat Chat
	// forward_from_message_id Optional. For messages forwarded from channels, identifier of the original message in the channel
	forward_from_message_id int
	// forward_signature Optional. For forwarded messages that were originally sent in channels or by an anonymous chat administrator, signature of the message sender if present
	forward_signature string
	// forward_sender_name Optional. Sender's name for messages forwarded from users who disallow adding a link to their account in forwarded messages
	forward_sender_name string
	// forward_date Optional. For forwarded messages, date the original message was sent in Unix time
	forward_date int
	// is_topic_message Optional. True, if the message is sent to a forum topic
	is_topic_message bool
	// is_automatic_forward Optional. True, if the message is a channel post that was automatically forwarded to the connected discussion group
	is_automatic_forward bool
	// reply_to_message Optional. For replies, the original message. Note that the Message object in this field will not contain further reply_to_message fields even if it itself is a reply.
	reply_to_message &Message
	// via_bot Optional. Bot through which the message was sent
	via_bot User
	// edit_date Optional. Date the message was last edited in Unix time
	edit_date int
	// has_protected_content Optional. True, if the message can't be forwarded
	has_protected_content bool
	// media_group_id Optional. The unique identifier of a media message group this message belongs to
	media_group_id string
	// author_signature Optional. Signature of the post author for messages in channels, or the custom title of an anonymous group administrator
	author_signature string
	// text Optional. For text messages, the actual UTF-8 text of the message
	text string
	// entities Optional. For text messages, special entities like usernames, URLs, bot commands, etc. that appear in the text
	entities []MessageEntity
	// animation Optional. Message is an animation, information about the animation. For backward compatibility, when this field is set, the document field will also be set
	animation Animation
	// audio Optional. Message is an audio file, information about the file
	audio Audio
	// document Optional. Message is a general file, information about the file
	document Document
	// photo Optional. Message is a photo, available sizes of the photo
	photo []PhotoSize
	// sticker Optional. Message is a sticker, information about the sticker
	sticker Sticker
	// video Optional. Message is a video, information about the video
	video Video
	// video_note Optional. Message is a video note, information about the video message
	video_note VideoNote
	// voice Optional. Message is a voice message, information about the file
	voice Voice
	// caption Optional. Caption for the animation, audio, document, photo, video or voice
	caption string
	// caption_entities Optional. For messages with a caption, special entities like usernames, URLs, bot commands, etc. that appear in the caption
	caption_entities []MessageEntity
	// has_media_spoiler Optional. True, if the message media is covered by a spoiler animation
	has_media_spoiler bool
	// contact Optional. Message is a shared contact, information about the contact
	contact Contact
	// dice Optional. Message is a dice with random value
	dice Dice
	// game Optional. Message is a game, information about the game. More about games »
	game Game
	// poll Optional. Message is a native poll, information about the poll
	poll Poll
	// venue Optional. Message is a venue, information about the venue. For backward compatibility, when this field is set, the location field will also be set
	venue Venue
	// location Optional. Message is a shared location, information about the location
	location Location
	// new_chat_members Optional. New members that were added to the group or supergroup and information about them (the bot itself may be one of these members)
	new_chat_members []User
	// left_chat_member Optional. A member was removed from the group, information about them (this member may be the bot itself)
	left_chat_member User
	// new_chat_title Optional. A chat title was changed to this value
	new_chat_title string
	// new_chat_photo Optional. A chat photo was change to this value
	new_chat_photo []string
	// delete_chat_photo Optional. Service message: the chat photo was deleted
	delete_chat_photo bool
	// group_chat_created Optional. Service message: the group has been created
	group_chat_created bool
	// supergroup_chat_created Optional. Service message: the supergroup has been created. This field can't be received in a message coming through updates, because bot can't be a member of a supergroup when it is created. It can only be found in reply_to_message if someone replies to a very first message in a directly created supergroup.
	supergroup_chat_created bool
	// channel_chat_created Optional. Service message: the channel has been created. This field can't be received in a message coming through updates, because bot can't be a member of a channel when it is created. It can only be found in reply_to_message if someone replies to a very first message in a channel.
	channel_chat_created bool
	// message_auto_delete_timer_changed Optional. Service message: auto-delete timer settings changed in the chat
	message_auto_delete_timer_changed MessageAutoDeleteTimerChanged
	// migrate_to_chat_id Optional. The group has been migrated to a supergroup with the specified identifier. This number may have more than 32 significant bits and some programming languages may have difficulty/silent defects in interpreting it. But it has at most 52 significant bits, so a signed 64-bit integer or double-precision float type are safe for storing this identifier.
	migrate_to_chat_id i64
	// migrate_from_chat_id Optional. The supergroup has been migrated from a group with the specified identifier. This number may have more than 32 significant bits and some programming languages may have difficulty/silent defects in interpreting it. But it has at most 52 significant bits, so a signed 64-bit integer or double-precision float type are safe for storing this identifier.
	migrate_from_chat_id i64
	// pinned_message Optional. Specified message was pinned. Note that the Message object in this field will not contain further reply_to_message fields even if it is itself a reply.
	pinned_message &Message
	// invoice Optional. Message is an invoice for a payment, information about the invoice. More about payments »
	invoice Invoice
	// successful_payment Optional. Message is a service message about a successful payment, information about the payment. More about payments »
	successful_payment SuccessfulPayment
	// user_shared Optional. Service message: a user was shared with the bot
	user_shared UserShared
	// chat_shared Optional. Service message: a chat was shared with the bot
	chat_shared ChatShared
	// connected_website Optional. The domain name of the website on which the user has logged in. More about Telegram Login »
	connected_website string
	// write_access_allowed Optional. Service message: the user allowed the bot added to the attachment menu to write messages
	write_access_allowed WriteAccessAllowed
	// passport_data Optional. Telegram Passport data
	passport_data PassportData
	// proximity_alert_triggered Optional. Service message. A user in the chat triggered another user's proximity alert while sharing Live Location.
	proximity_alert_triggered ProximityAlertTriggered
	// forum_topic_created Optional. Service message: forum topic created
	forum_topic_created ForumTopicCreated
	// forum_topic_edited Optional. Service message: forum topic edited
	forum_topic_edited ForumTopicEdited
	// forum_topic_closed Optional. Service message: forum topic closed
	forum_topic_closed ForumTopicClosed
	// forum_topic_reopened Optional. Service message: forum topic reopened
	forum_topic_reopened ForumTopicReopened
	// general_forum_topic_hidden Optional. Service message: the 'General' forum topic hidden
	general_forum_topic_hidden GeneralForumTopicHidden
	// general_forum_topic_unhidden Optional. Service message: the 'General' forum topic unhidden
	general_forum_topic_unhidden GeneralForumTopicUnhidden
	// video_chat_scheduled Optional. Service message: video chat scheduled
	video_chat_scheduled VideoChatScheduled
	// video_chat_started Optional. Service message: video chat started
	video_chat_started VideoChatStarted
	// video_chat_ended Optional. Service message: video chat ended
	video_chat_ended VideoChatEnded
	// video_chat_participants_invited Optional. Service message: new participants invited to a video chat
	video_chat_participants_invited VideoChatParticipantsInvited
	// web_app_data Optional. Service message: data sent by a Web App
	web_app_data WebAppData
	// reply_markup Optional. Inline keyboard attached to the message. login_url buttons are represented as ordinary url buttons.
	reply_markup InlineKeyboardMarkup
}
```

Message This object represents a message.

[[Return to contents]](#Contents)

## delete

```v
fn (message Message) delete[T](mut bot T) !bool
```

delete message

[[Return to contents]](#Contents)

## edit

```v
fn (message Message) edit[T](mut bot T, params EditMessageText) !Message
```

edit Clone of editMessageText method with diffrence that it take message_id of attached Message ONLY IF NOT specified message_id or inline_message_id in params and takes away the requirement to specify a chat_id (also takes it from attached Message)

[[Return to contents]](#Contents)

## reply

```v
fn (message Message) reply[T](mut bot T, params SendMessage) !Message
```

reply on message that are pointed on takes away the requirement to specify chat_id in params

[[Return to contents]](#Contents)

## MessageAutoDeleteTimerChanged

```v
struct MessageAutoDeleteTimerChanged {
pub:
	// message_auto_delete_time New auto-delete time for messages in the chat; in seconds
	message_auto_delete_time int = -1
}
```

MessageAutoDeleteTimerChanged This object represents a service message about a change in auto-delete timer settings.

[[Return to contents]](#Contents)

## MessageEntity

```v
struct MessageEntity {
pub:
	// type Type of the entity. Currently, can be “mention” (@username), “hashtag” (#hashtag), “cashtag” ($USD), “bot_command” (/start@jobs_bot), “url” (https://telegram.org), “email” (do-not-reply@telegram.org), “phone_number” (+1-212-555-0123), “bold” (bold text), “italic” (italic text), “underline” (underlined text), “strikethrough” (strikethrough text), “spoiler” (spoiler message), “code” (monowidth string), “pre” (monowidth block), “text_link” (for clickable text URLs), “text_mention” (for users without usernames), “custom_emoji” (for inline custom emoji stickers)
	@type string
	// offset Offset in UTF-16 code units to the start of the entity
	offset int
	// length Length of the entity in UTF-16 code units
	length int
	// url Optional. For “text_link” only, URL that will be opened after user taps on the text
	url string
	// user Optional. For “text_mention” only, the mentioned user
	user User
	// language Optional. For “pre” only, the programming language of the entity text
	language string
	// custom_emoji_id Optional. For “custom_emoji” only, unique identifier of the custom emoji. Use getCustomEmojiStickers to get full information about the sticker
	custom_emoji_id string
}
```

MessageEntity This object represents one special entity in a text message. For example, hashtags, usernames, URLs, etc.

[[Return to contents]](#Contents)

## MessageId

```v
struct MessageId {
pub:
	// message_id Unique message identifier
	message_id int
}
```

MessageId This object represents a unique message identifier.

[[Return to contents]](#Contents)

## OrderInfo

```v
struct OrderInfo {
pub:
	// name Optional. User name
	name string
	// phone_number Optional. User's phone number
	phone_number string
	// email Optional. User email
	email string
	// shipping_address Optional. User shipping address
	shipping_address ShippingAddress
}
```

OrderInfo This object represents information about an order.

[[Return to contents]](#Contents)

## PassportData

```v
struct PassportData {
pub:
	// data Array with information about documents and other Telegram Passport elements that was shared with the bot
	data []EncryptedPassportElement
	// credentials Encrypted credentials required to decrypt the data
	credentials EncryptedCredentials
}
```

PassportData Describes Telegram Passport data shared with the bot by the user.

[[Return to contents]](#Contents)

## PassportElementErrorDataField

```v
struct PassportElementErrorDataField {
pub:
	// source Error source, must be data
	source string
	// type The section of the user's Telegram Passport which has the error, one of “personal_details”, “passport”, “driver_license”, “identity_card”, “internal_passport”, “address”
	@type string
	// field_name Name of the data field which has the error
	field_name string
	// data_hash Base64-encoded data hash
	data_hash string
	// message Error message
	message string
}
```

PassportElementErrorDataField Represents an issue in one of the data fields that was provided by the user. The error is considered resolved when the field's value changes.

[[Return to contents]](#Contents)

## PassportElementErrorFile

```v
struct PassportElementErrorFile {
pub:
	// source Error source, must be file
	source string
	// type The section of the user's Telegram Passport which has the issue, one of “utility_bill”, “bank_statement”, “rental_agreement”, “passport_registration”, “temporary_registration”
	@type string
	// file_hash Base64-encoded file hash
	file_hash string
	// message Error message
	message string
}
```

PassportElementErrorFile Represents an issue with a document scan. The error is considered resolved when the file with the document scan changes.

[[Return to contents]](#Contents)

## PassportElementErrorFiles

```v
struct PassportElementErrorFiles {
pub:
	// source Error source, must be files
	source string
	// type The section of the user's Telegram Passport which has the issue, one of “utility_bill”, “bank_statement”, “rental_agreement”, “passport_registration”, “temporary_registration”
	@type string
	// file_hashes List of base64-encoded file hashes
	file_hashes []string
	// message Error message
	message string
}
```

PassportElementErrorFiles Represents an issue with a list of scans. The error is considered resolved when the list of files containing the scans changes.

[[Return to contents]](#Contents)

## PassportElementErrorFrontSide

```v
struct PassportElementErrorFrontSide {
pub:
	// source Error source, must be front_side
	source string
	// type The section of the user's Telegram Passport which has the issue, one of “passport”, “driver_license”, “identity_card”, “internal_passport”
	@type string
	// file_hash Base64-encoded hash of the file with the front side of the document
	file_hash string
	// message Error message
	message string
}
```

PassportElementErrorFrontSide Represents an issue with the front side of a document. The error is considered resolved when the file with the front side of the document changes.

[[Return to contents]](#Contents)

## PassportElementErrorReverseSide

```v
struct PassportElementErrorReverseSide {
pub:
	// source Error source, must be reverse_side
	source string
	// type The section of the user's Telegram Passport which has the issue, one of “driver_license”, “identity_card”
	@type string
	// file_hash Base64-encoded hash of the file with the reverse side of the document
	file_hash string
	// message Error message
	message string
}
```

PassportElementErrorReverseSide Represents an issue with the reverse side of a document. The error is considered resolved when the file with reverse side of the document changes.

[[Return to contents]](#Contents)

## PassportElementErrorSelfie

```v
struct PassportElementErrorSelfie {
pub:
	// source Error source, must be selfie
	source string
	// type The section of the user's Telegram Passport which has the issue, one of “passport”, “driver_license”, “identity_card”, “internal_passport”
	@type string
	// file_hash Base64-encoded hash of the file with the selfie
	file_hash string
	// message Error message
	message string
}
```

PassportElementErrorSelfie Represents an issue with the selfie with a document. The error is considered resolved when the file with the selfie changes.

[[Return to contents]](#Contents)

## PassportElementErrorTranslationFile

```v
struct PassportElementErrorTranslationFile {
pub:
	// source Error source, must be translation_file
	source string
	// type Type of element of the user's Telegram Passport which has the issue, one of “passport”, “driver_license”, “identity_card”, “internal_passport”, “utility_bill”, “bank_statement”, “rental_agreement”, “passport_registration”, “temporary_registration”
	@type string
	// file_hash Base64-encoded file hash
	file_hash string
	// message Error message
	message string
}
```

PassportElementErrorTranslationFile Represents an issue with one of the files that constitute the translation of a document. The error is considered resolved when the file changes.

[[Return to contents]](#Contents)

## PassportElementErrorTranslationFiles

```v
struct PassportElementErrorTranslationFiles {
pub:
	// source Error source, must be translation_files
	source string
	// type Type of element of the user's Telegram Passport which has the issue, one of “passport”, “driver_license”, “identity_card”, “internal_passport”, “utility_bill”, “bank_statement”, “rental_agreement”, “passport_registration”, “temporary_registration”
	@type string
	// file_hashes List of base64-encoded file hashes
	file_hashes []string
	// message Error message
	message string
}
```

PassportElementErrorTranslationFiles Represents an issue with the translated version of a document. The error is considered resolved when a file with the document translation change.

[[Return to contents]](#Contents)

## PassportElementErrorUnspecified

```v
struct PassportElementErrorUnspecified {
pub:
	// source Error source, must be unspecified
	source string
	// type Type of element of the user's Telegram Passport which has the issue
	@type string
	// element_hash Base64-encoded element hash
	element_hash string
	// message Error message
	message string
}
```

PassportElementErrorUnspecified Represents an issue in an unspecified place. The error is considered resolved when new data is added.

[[Return to contents]](#Contents)

## PassportFile

```v
struct PassportFile {
pub:
	// file_id Identifier for this file, which can be used to download or reuse the file
	file_id string
	// file_unique_id Unique identifier for this file, which is supposed to be the same over time and for different bots. Can't be used to download or reuse the file.
	file_unique_id string
	// file_size File size in bytes
	file_size int
	// file_date Unix time when the file was uploaded
	file_date int
}
```

PassportFile This object represents a file uploaded to Telegram Passport. Currently all Telegram Passport files are in JPEG format when decrypted and don't exceed 10MB.

[[Return to contents]](#Contents)

## PhotoSize

```v
struct PhotoSize {
pub:
	// file_id Identifier for this file, which can be used to download or reuse the file
	file_id string
	// file_unique_id Unique identifier for this file, which is supposed to be the same over time and for different bots. Can't be used to download or reuse the file.
	file_unique_id string
	// width Photo width
	width int
	// height Photo height
	height int
	// file_size Optional. File size in bytes
	file_size int
}
```

PhotoSize This object represents one size of a photo or a file / sticker thumbnail.

[[Return to contents]](#Contents)

## PinChatMessage

```v
struct PinChatMessage {
	// chat_id Unique identifier for the target chat or username of the target channel (in the format @channelusername)
	chat_id i64
	// message_id Identifier of a message to pin
	message_id int
	// disable_notification Pass True if it is not necessary to send a notification to all chat members about the new pinned message. Notifications are always disabled in channels and private chats.
	disable_notification bool
}
```

[[Return to contents]](#Contents)

## Poll

```v
struct Poll {
pub:
	// id Unique poll identifier
	id string
	// question Poll question, 1-300 characters
	question string
	// options List of poll options
	options []PollOption
	// total_voter_count Total number of users that voted in the poll
	total_voter_count int
	// is_closed True, if the poll is closed
	is_closed bool
	// is_anonymous True, if the poll is anonymous
	is_anonymous bool
	// type Poll type, currently can be “regular” or “quiz”
	@type string
	// allows_multiple_answers True, if the poll allows multiple answers
	allows_multiple_answers bool
	// correct_option_id Optional. 0-based identifier of the correct answer option. Available only for polls in the quiz mode, which are closed, or was sent (not forwarded) by the bot or to the private chat with the bot.
	correct_option_id int
	// explanation Optional. Text that is shown when a user chooses an incorrect answer or taps on the lamp icon in a quiz-style poll, 0-200 characters
	explanation string
	// explanation_entities Optional. Special entities like usernames, URLs, bot commands, etc. that appear in the explanation
	explanation_entities []MessageEntity
	// open_period Optional. Amount of time in seconds the poll will be active after creation
	open_period int
	// close_date Optional. Point in time (Unix timestamp) when the poll will be automatically closed
	close_date int
}
```

Poll This object contains information about a poll.

[[Return to contents]](#Contents)

## PollAnswer

```v
struct PollAnswer {
pub:
	// poll_id Unique poll identifier
	poll_id string
	// user The user, who changed the answer to the poll
	user User
	// option_ids 0-based identifiers of answer options, chosen by the user. May be empty if the user retracted their vote.
	option_ids []int
}
```

PollAnswer This object represents an answer of a user in a non-anonymous poll.

[[Return to contents]](#Contents)

## PollingConfig

```v
struct PollingConfig[T] {
	GetUpdates // delay_time Time in milliseconds between getting updates
	delay_time  int = 1000
	middleware_ T
}
```

[[Return to contents]](#Contents)

## PollOption

```v
struct PollOption {
pub:
	// text Option text, 1-100 characters
	text string
	// voter_count Number of users that voted for this option
	voter_count int
}
```

PollOption This object contains information about one answer option in a poll.

[[Return to contents]](#Contents)

## PreCheckoutQuery

```v
struct PreCheckoutQuery {
pub:
	// id Unique query identifier
	id string
	// from User who sent the query
	from User
	// currency Three-letter ISO 4217 currency code
	currency string
	// total_amount Total price in the smallest units of the currency (integer, not float/double). For example, for a price of US$ 1.45 pass amount = 145. See the exp parameter in currencies.json, it shows the number of digits past the decimal point for each currency (2 for the majority of currencies).
	total_amount int
	// invoice_payload Bot specified invoice payload
	invoice_payload string
	// shipping_option_id Optional. Identifier of the shipping option chosen by the user
	shipping_option_id string
	// order_info Optional. Order information provided by the user
	order_info OrderInfo
}
```

PreCheckoutQuery This object contains information about an incoming pre-checkout query.

[[Return to contents]](#Contents)

## PromoteChatMember

```v
struct PromoteChatMember {
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
```

[[Return to contents]](#Contents)

## ProximityAlertTriggered

```v
struct ProximityAlertTriggered {
pub:
	// traveler User that triggered the alert
	traveler User
	// watcher User that set the alert
	watcher User
	// distance The distance between the users
	distance int
}
```

ProximityAlertTriggered This object represents the content of a service message, sent whenever a user in the chat triggers a proximity alert set by another user.

[[Return to contents]](#Contents)

## Regular

```v
struct Regular {}
```

[[Return to contents]](#Contents)

## ReopenForumTopic

```v
struct ReopenForumTopic {
	// chat_id Unique identifier for the target chat or username of the target supergroup (in the format @supergroupusername)
	chat_id i64
	// message_thread_id Unique identifier for the target message thread of the forum topic
	message_thread_id int
}
```

[[Return to contents]](#Contents)

## ReopenGeneralForumTopic

```v
struct ReopenGeneralForumTopic {
	// chat_id Unique identifier for the target chat or username of the target supergroup (in the format @supergroupusername)
	chat_id i64
}
```

[[Return to contents]](#Contents)

## ReplyKeyboardMarkup

```v
struct ReplyKeyboardMarkup {
pub:
	// keyboard Array of button rows, each represented by an Array of KeyboardButton objects
	keyboard [][]KeyboardButton
	// is_persistent Optional. Requests clients to always show the keyboard when the regular keyboard is hidden. Defaults to false, in which case the custom keyboard can be hidden and opened with a keyboard icon.
	is_persistent bool
	// resize_keyboard Optional. Requests clients to resize the keyboard vertically for optimal fit (e.g., make the keyboard smaller if there are just two rows of buttons). Defaults to false, in which case the custom keyboard is always of the same height as the app's standard keyboard.
	resize_keyboard bool
	// one_time_keyboard Optional. Requests clients to hide the keyboard as soon as it's been used. The keyboard will still be available, but clients will automatically display the usual letter-keyboard in the chat - the user can press a special button in the input field to see the custom keyboard again. Defaults to false.
	one_time_keyboard bool
	// input_field_placeholder Optional. The placeholder to be shown in the input field when the keyboard is active; 1-64 characters
	input_field_placeholder string
	// selective Optional. Use this parameter if you want to show the keyboard to specific users only. Targets: 1) users that are @mentioned in the text of the Message object; 2) if the bot's message is a reply (has reply_to_message_id), sender of the original message.  Example: A user requests to change the bot's language, bot replies to the request with a keyboard to select the new language. Other users in the group don't see the keyboard.
	selective bool
}
```

ReplyKeyboardMarkup This object represents a custom keyboard with reply options (see Introduction to bots for details and examples).

[[Return to contents]](#Contents)

## ReplyKeyboardMarkupExt

```v
struct ReplyKeyboardMarkupExt {
pub:
	// keyboard Array of button rows, each represented by an Array of KeyboardButton objects
	keyboard [][]KeyboardButtonExt
	// is_persistent Optional. Requests clients to always show the keyboard when the regular keyboard is hidden. Defaults to false, in which case the custom keyboard can be hidden and opened with a keyboard icon.
	is_persistent bool
	// resize_keyboard Optional. Requests clients to resize the keyboard vertically for optimal fit (e.g., make the keyboard smaller if there are just two rows of buttons). Defaults to false, in which case the custom keyboard is always of the same height as the app's standard keyboard.
	resize_keyboard bool
	// one_time_keyboard Optional. Requests clients to hide the keyboard as soon as it's been used. The keyboard will still be available, but clients will automatically display the usual letter-keyboard in the chat - the user can press a special button in the input field to see the custom keyboard again. Defaults to false.
	one_time_keyboard bool
	// input_field_placeholder Optional. The placeholder to be shown in the input field when the keyboard is active; 1-64 characters
	input_field_placeholder string
	// selective Optional. Use this parameter if you want to show the keyboard to specific users only. Targets: 1) users that are @mentioned in the text of the Message object; 2) if the bot's message is a reply (has reply_to_message_id), sender of the original message.  Example: A user requests to change the bot's language, bot replies to the request with a keyboard to select the new language. Other users in the group don't see the keyboard.
	selective bool
}
```

ReplyKeyboardMarkup This object represents a custom keyboard with reply options (see Introduction to bots for details and examples).

[[Return to contents]](#Contents)

## ReplyKeyboardRemove

```v
struct ReplyKeyboardRemove {
pub:
	// remove_keyboard Requests clients to remove the custom keyboard (user will not be able to summon this keyboard; if you want to hide the keyboard from sight but keep it accessible, use one_time_keyboard in ReplyKeyboardMarkup)
	remove_keyboard bool
	// selective Optional. Use this parameter if you want to remove the keyboard for specific users only. Targets: 1) users that are @mentioned in the text of the Message object; 2) if the bot's message is a reply (has reply_to_message_id), sender of the original message.  Example: A user votes in a poll, bot returns confirmation message in reply to the vote and removes the keyboard for that user, while still showing the keyboard with poll options to users who haven't voted yet.
	selective bool
}
```

ReplyKeyboardRemove Upon receiving a message with this object, Telegram clients will remove the current custom keyboard and display the default letter-keyboard. By default, custom keyboards are displayed until a new keyboard is sent by a bot. An exception is made for one-time keyboards that are hidden immediately after the user presses a button (see ReplyKeyboardMarkup).

[[Return to contents]](#Contents)

## ResponseNotOK

```v
struct ResponseNotOK {
pub:
	ok          bool
	error_code  int
	description string
}
```

[[Return to contents]](#Contents)

## ResponseOK

```v
struct ResponseOK {
pub:
	ok          bool
	result      string [raw]
	description string
}
```

[[Return to contents]](#Contents)

## ResponseParameters

```v
struct ResponseParameters {
pub:
	// migrate_to_chat_id Optional. The group has been migrated to a supergroup with the specified identifier. This number may have more than 32 significant bits and some programming languages may have difficulty/silent defects in interpreting it. But it has at most 52 significant bits, so a signed 64-bit integer or double-precision float type are safe for storing this identifier.
	migrate_to_chat_id i64
	// retry_after Optional. In case of exceeding flood control, the number of seconds left to wait before the request can be repeated
	retry_after int
}
```

ResponseParameters Describes why a request was unsuccessful.

[[Return to contents]](#Contents)

## RestrictChatMember

```v
struct RestrictChatMember {
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
```

[[Return to contents]](#Contents)

## Result

```v
struct Result {
pub:
	update Update
pub mut:
	data map[string]string
}
```

[[Return to contents]](#Contents)

## RevokeChatInviteLink

```v
struct RevokeChatInviteLink {
	// chat_id Unique identifier of the target chat or username of the target channel (in the format @channelusername)
	chat_id i64
	// invite_link The invite link to revoke
	invite_link string
}
```

[[Return to contents]](#Contents)

## SendAnimation

```v
struct SendAnimation {
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
```

[[Return to contents]](#Contents)

## SendAudio

```v
struct SendAudio {
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
```

[[Return to contents]](#Contents)

## SendChatAction

```v
struct SendChatAction {
	// chat_id Unique identifier for the target chat or username of the target channel (in the format @channelusername)
	chat_id i64
	// message_thread_id Unique identifier for the target message thread; supergroups only
	message_thread_id int
	// action Type of action to broadcast. Choose one, depending on what the user is about to receive: typing for text messages, upload_photo for photos, record_video or upload_video for videos, record_voice or upload_voice for voice notes, upload_document for general files, choose_sticker for stickers, find_location for location data, record_video_note or upload_video_note for video notes.
	action string
}
```

[[Return to contents]](#Contents)

## SendContact

```v
struct SendContact {
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
```

[[Return to contents]](#Contents)

## SendDice

```v
struct SendDice {
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
```

[[Return to contents]](#Contents)

## SendDocument

```v
struct SendDocument {
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
```

[[Return to contents]](#Contents)

## SendGame

```v
struct SendGame {
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
```

[[Return to contents]](#Contents)

## SendInvoice

```v
struct SendInvoice {
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
```

[[Return to contents]](#Contents)

## SendLocation

```v
struct SendLocation {
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
```

[[Return to contents]](#Contents)

## SendMediaGroup

```v
struct SendMediaGroup {
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
```

[[Return to contents]](#Contents)

## SendMessage

```v
struct SendMessage {
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
```

[[Return to contents]](#Contents)

## SendPhoto

```v
struct SendPhoto {
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
```

[[Return to contents]](#Contents)

## SendPoll

```v
struct SendPoll {
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
```

[[Return to contents]](#Contents)

## SendSticker

```v
struct SendSticker {
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
```

[[Return to contents]](#Contents)

## SendVenue

```v
struct SendVenue {
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
```

[[Return to contents]](#Contents)

## SendVideo

```v
struct SendVideo {
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
```

[[Return to contents]](#Contents)

## SendVideoNote

```v
struct SendVideoNote {
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
```

[[Return to contents]](#Contents)

## SendVoice

```v
struct SendVoice {
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
```

[[Return to contents]](#Contents)

## SentWebAppMessage

```v
struct SentWebAppMessage {
pub:
	// inline_message_id Optional. Identifier of the sent inline message. Available only if there is an inline keyboard attached to the message.
	inline_message_id string
}
```

SentWebAppMessage Describes an inline message sent by a Web App on behalf of a user.

[[Return to contents]](#Contents)

## SetChatAdministratorCustomTitle

```v
struct SetChatAdministratorCustomTitle {
	// chat_id Unique identifier for the target chat or username of the target supergroup (in the format @supergroupusername)
	chat_id i64
	// user_id Unique identifier of the target user
	user_id int
	// custom_title New custom title for the administrator; 0-16 characters, emoji are not allowed
	custom_title string
}
```

[[Return to contents]](#Contents)

## SetChatDescription

```v
struct SetChatDescription {
	// chat_id Unique identifier for the target chat or username of the target channel (in the format @channelusername)
	chat_id i64
	// description New chat description, 0-255 characters
	description string
}
```

[[Return to contents]](#Contents)

## SetChatMenuButton

```v
struct SetChatMenuButton {
	// chat_id Unique identifier for the target private chat. If not specified, default bot's menu button will be changed
	chat_id i64
	// menu_button A JSON-serialized object for the bot's new menu button. Defaults to MenuButtonDefault
	menu_button MenuButton
}
```

[[Return to contents]](#Contents)

## SetChatPermissions

```v
struct SetChatPermissions {
	// chat_id Unique identifier for the target chat or username of the target supergroup (in the format @supergroupusername)
	chat_id i64
	// permissions A JSON-serialized object for new default chat permissions
	permissions ChatPermissions
	// use_independent_chat_permissions Optional Pass True if chat permissions are set independently.
	// Otherwise, the can_send_other_messages and can_add_web_page_previews permissions will imply the can_send_messages, can_send_audios, can_send_documents, can_send_photos, can_send_videos, can_send_video_notes, and can_send_voice_notes permissions; the can_send_polls permission will imply the can_send_messages permission.
	use_independent_chat_permissions bool
}
```

[[Return to contents]](#Contents)

## SetChatPhoto

```v
struct SetChatPhoto {
	// chat_id Unique identifier for the target chat or username of the target channel (in the format @channelusername)
	chat_id i64
	// photo New chat photo, uploaded using multipart/form-data
	photo string
}
```

[[Return to contents]](#Contents)

## SetChatStickerSet

```v
struct SetChatStickerSet {
	// chat_id Unique identifier for the target chat or username of the target supergroup (in the format @supergroupusername)
	chat_id i64
	// sticker_set_name Name of the sticker set to be set as the group sticker set
	sticker_set_name string
}
```

[[Return to contents]](#Contents)

## SetChatTitle

```v
struct SetChatTitle {
	// chat_id Unique identifier for the target chat or username of the target channel (in the format @channelusername)
	chat_id i64
	// title New chat title, 1-128 characters
	title string
}
```

[[Return to contents]](#Contents)

## SetGameScore

```v
struct SetGameScore {
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
```

[[Return to contents]](#Contents)

## SetMyCommands

```v
struct SetMyCommands {
	// commands A JSON-serialized list of bot commands to be set as the list of the bot's commands. At most 100 commands can be specified.
	commands []BotCommand
	// scope A JSON-serialized object, describing scope of users for which the commands are relevant. Defaults to BotCommandScopeDefault.
	scope BotCommandScope
	// language_code A two-letter ISO 639-1 language code. If empty, commands will be applied to all users from the given scope, for whose language there are no dedicated commands
	language_code string
}
```

[[Return to contents]](#Contents)

## SetMyDefaultAdministratorRights

```v
struct SetMyDefaultAdministratorRights {
	// rights A JSON-serialized object describing new default administrator rights. If not specified, the default administrator rights will be cleared.
	rights ChatAdministratorRights
	// for_channels Pass True to change the default administrator rights of the bot in channels. Otherwise, the default administrator rights of the bot for groups and supergroups will be changed.
	for_channels bool
}
```

[[Return to contents]](#Contents)

## SetPassportDataErrors

```v
struct SetPassportDataErrors {
	// user_id User identifier
	user_id int
	// errors A JSON-serialized array describing the errors
	errors []PassportElementError
}
```

[[Return to contents]](#Contents)

## SetStickerPositionInSet

```v
struct SetStickerPositionInSet {
	// sticker File identifier of the sticker
	sticker string
	// position New sticker position in the set, zero-based
	position int
}
```

[[Return to contents]](#Contents)

## SetStickerSetThumb

```v
struct SetStickerSetThumb {
	// name Sticker set name
	name string
	// user_id User identifier of the sticker set owner
	user_id int
	// thumb A PNG image with the thumbnail, must be up to 128 kilobytes in size and have width and height exactly 100px, or a TGS animation with the thumbnail up to 32 kilobytes in size; see https://core.telegram.org/stickers#animated-sticker-requirements for animated sticker technical requirements, or a WEBM video with the thumbnail up to 32 kilobytes in size; see https://core.telegram.org/stickers#video-sticker-requirements for video sticker technical requirements. Pass a file_id as a String to send a file that already exists on the Telegram servers, pass an HTTP URL as a String for Telegram to get a file from the Internet, or upload a new one using multipart/form-data. More information on Sending Files ». Animated sticker set thumbnails can't be uploaded via HTTP URL.
	thumb string
}
```

[[Return to contents]](#Contents)

## SetWebhook

```v
struct SetWebhook {
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
```

[[Return to contents]](#Contents)

## ShippingAddress

```v
struct ShippingAddress {
pub:
	// country_code Two-letter ISO 3166-1 alpha-2 country code
	country_code string
	// state State, if applicable
	state string
	// city City
	city string
	// street_line1 First line for the address
	street_line1 string
	// street_line2 Second line for the address
	street_line2 string
	// post_code Address post code
	post_code string
}
```

ShippingAddress This object represents a shipping address.

[[Return to contents]](#Contents)

## ShippingOption

```v
struct ShippingOption {
pub:
	// id Shipping option identifier
	id string
	// title Option title
	title string
	// prices List of price portions
	prices []LabeledPrice
}
```

ShippingOption This object represents one shipping option.

[[Return to contents]](#Contents)

## ShippingQuery

```v
struct ShippingQuery {
pub:
	// id Unique query identifier
	id string
	// from User who sent the query
	from User
	// invoice_payload Bot specified invoice payload
	invoice_payload string
	// shipping_address User specified shipping address
	shipping_address ShippingAddress
}
```

ShippingQuery This object contains information about an incoming shipping query.

[[Return to contents]](#Contents)

## Sticker

```v
struct Sticker {
pub:
	// file_id Identifier for this file, which can be used to download or reuse the file
	file_id string
	// file_unique_id Unique identifier for this file, which is supposed to be the same over time and for different bots. Can't be used to download or reuse the file.
	file_unique_id string
	// type Type of the sticker, currently one of “regular”, “mask”, “custom_emoji”. The type of the sticker is independent from its format, which is determined by the fields is_animated and is_video.
	@type string
	// width Sticker width
	width int
	// height Sticker height
	height int
	// is_animated True, if the sticker is animated
	is_animated bool
	// is_video True, if the sticker is a video sticker
	is_video bool
	// thumb Optional. Sticker thumbnail in the .WEBP or .JPG format
	thumb PhotoSize
	// emoji Optional. Emoji associated with the sticker
	emoji string
	// set_name Optional. Name of the sticker set to which the sticker belongs
	set_name string
	// premium_animation Optional. For premium regular stickers, premium animation for the sticker
	premium_animation File
	// mask_position Optional. For mask stickers, the position where the mask should be placed
	mask_position MaskPosition
	// custom_emoji_id Optional. For custom emoji stickers, unique identifier of the custom emoji
	custom_emoji_id string
	// file_size Optional. File size in bytes
	file_size int
}
```

Sticker This object represents a sticker.

[[Return to contents]](#Contents)

## StickerSet

```v
struct StickerSet {
pub:
	// name Sticker set name
	name string
	// title Sticker set title
	title string
	// sticker_type Type of stickers in the set, currently one of “regular”, “mask”, “custom_emoji”
	sticker_type string
	// is_animated True, if the sticker set contains animated stickers
	is_animated bool
	// is_video True, if the sticker set contains video stickers
	is_video bool
	// stickers List of all set stickers
	stickers []Sticker
	// thumb Optional. Sticker set thumbnail in the .WEBP, .TGS, or .WEBM format
	thumb PhotoSize
}
```

StickerSet This object represents a sticker set.

[[Return to contents]](#Contents)

## StopMessageLiveLocation

```v
struct StopMessageLiveLocation {
	// chat_id Required if inline_message_id is not specified. Unique identifier for the target chat or username of the target channel (in the format @channelusername)
	chat_id i64
	// message_id Required if inline_message_id is not specified. Identifier of the message with live location to stop
	message_id int
	// inline_message_id Required if chat_id and message_id are not specified. Identifier of the inline message
	inline_message_id string
	// reply_markup A JSON-serialized object for a new inline keyboard.
	reply_markup InlineKeyboardMarkup
}
```

[[Return to contents]](#Contents)

## StopPoll

```v
struct StopPoll {
	// chat_id Unique identifier for the target chat or username of the target channel (in the format @channelusername)
	chat_id i64
	// message_id Identifier of the original message with the poll
	message_id int
	// reply_markup A JSON-serialized object for a new message inline keyboard.
	reply_markup InlineKeyboardMarkup
}
```

[[Return to contents]](#Contents)

## SuccessfulPayment

```v
struct SuccessfulPayment {
pub:
	// currency Three-letter ISO 4217 currency code
	currency string
	// total_amount Total price in the smallest units of the currency (integer, not float/double). For example, for a price of US$ 1.45 pass amount = 145. See the exp parameter in currencies.json, it shows the number of digits past the decimal point for each currency (2 for the majority of currencies).
	total_amount int
	// invoice_payload Bot specified invoice payload
	invoice_payload string
	// shipping_option_id Optional. Identifier of the shipping option chosen by the user
	shipping_option_id string
	// order_info Optional. Order information provided by the user
	order_info OrderInfo
	// telegram_payment_charge_id Telegram payment identifier
	telegram_payment_charge_id string
	// provider_payment_charge_id Provider payment identifier
	provider_payment_charge_id string
}
```

SuccessfulPayment This object contains basic information about a successful payment.

[[Return to contents]](#Contents)

## UnbanChatMember

```v
struct UnbanChatMember {
	// chat_id Unique identifier for the target group or username of the target supergroup or channel (in the format @channelusername)
	chat_id i64
	// user_id Unique identifier of the target user
	user_id int
	// only_if_banned Do nothing if the user is not banned
	only_if_banned bool
}
```

[[Return to contents]](#Contents)

## UnbanChatSenderChat

```v
struct UnbanChatSenderChat {
	// chat_id Unique identifier for the target chat or username of the target channel (in the format @channelusername)
	chat_id i64
	// sender_chat_id Unique identifier of the target sender chat
	sender_chat_id int
}
```

[[Return to contents]](#Contents)

## UnhideGeneralForumTopic

```v
struct UnhideGeneralForumTopic {
	// chat_id Unique identifier for the target chat or username of the target supergroup (in the format @supergroupusername)
	chat_id i64
}
```

[[Return to contents]](#Contents)

## UnpinAllChatMessages

```v
struct UnpinAllChatMessages {
	// chat_id Unique identifier for the target chat or username of the target channel (in the format @channelusername)
	chat_id i64
}
```

[[Return to contents]](#Contents)

## UnpinAllForumTopicMessages

```v
struct UnpinAllForumTopicMessages {
	// chat_id Unique identifier for the target chat or username of the target supergroup (in the format @supergroupusername)
	chat_id i64
	// message_thread_id Unique identifier for the target message thread of the forum topic
	message_thread_id int
}
```

[[Return to contents]](#Contents)

## UnpinChatMessage

```v
struct UnpinChatMessage {
	// chat_id Unique identifier for the target chat or username of the target channel (in the format @channelusername)
	chat_id i64
	// message_id Identifier of a message to unpin. If not specified, the most recent pinned message (by sending date) will be unpinned.
	message_id int
}
```

[[Return to contents]](#Contents)

## Update

```v
struct Update {
pub mut:
	// update_id The update's unique identifier. Update identifiers start from a certain positive number and increase sequentially. This ID becomes especially handy if you're using webhooks, since it allows you to ignore repeated updates or to restore the correct update sequence, should they get out of order. If there are no new updates for at least a week, then identifier of the next update will be chosen randomly instead of sequentially.
	update_id int
	// message Optional. New incoming message of any kind - text, photo, sticker, etc.
	message Message
	// edited_message Optional. New version of a message that is known to the bot and was edited
	edited_message Message
	// channel_post Optional. New incoming channel post of any kind - text, photo, sticker, etc.
	channel_post Message
	// edited_channel_post Optional. New version of a channel post that is known to the bot and was edited
	edited_channel_post Message
	// inline_query Optional. New incoming inline query
	inline_query InlineQuery
	// chosen_inline_result Optional. The result of an inline query that was chosen by a user and sent to their chat partner. Please see our documentation on the feedback collecting for details on how to enable these updates for your bot.
	chosen_inline_result ChosenInlineResult
	// callback_query Optional. New incoming callback query
	callback_query CallbackQuery
	// shipping_query Optional. New incoming shipping query. Only for invoices with flexible price
	shipping_query ShippingQuery
	// pre_checkout_query Optional. New incoming pre-checkout query. Contains full information about checkout
	pre_checkout_query PreCheckoutQuery
	// poll Optional. New poll state. Bots receive only updates about stopped polls and polls, which are sent by the bot
	poll Poll
	// poll_answer Optional. A user changed their answer in a non-anonymous poll. Bots receive new votes only in polls that were sent by the bot itself.
	poll_answer PollAnswer
	// my_chat_member Optional. The bot's chat member status was updated in a chat. For private chats, this update is received only when the bot is blocked or unblocked by the user.
	my_chat_member ChatMemberUpdated
	// chat_member Optional. A chat member's status was updated in a chat. The bot must be an administrator in the chat and must explicitly specify “chat_member” in the list of allowed_updates to receive these updates.
	chat_member ChatMemberUpdated
	// chat_join_request Optional. A request to join the chat has been sent. The bot must have the can_invite_users administrator right in the chat to receive these updates.
	chat_join_request ChatJoinRequest
}
```

Update This object represents an incoming update. At most one of the optional parameters can be present in any given update.

[[Return to contents]](#Contents)

## UploadStickerFile

```v
struct UploadStickerFile {
	// user_id User identifier of sticker file owner
	user_id int
	// png_sticker PNG image with the sticker, must be up to 512 kilobytes in size, dimensions must not exceed 512px, and either width or height must be exactly 512px. More information on Sending Files »
	png_sticker string
}
```

[[Return to contents]](#Contents)

## User

```v
struct User {
pub:
	// id Unique identifier for this user or bot. This number may have more than 32 significant bits and some programming languages may have difficulty/silent defects in interpreting it. But it has at most 52 significant bits, so a 64-bit integer or double-precision float type are safe for storing this identifier.
	id i64
	// is_bot True, if this user is a bot
	is_bot bool
	// first_name User's or bot's first name
	first_name string
	// last_name Optional. User's or bot's last name
	last_name string
	// username Optional. User's or bot's username
	username string
	// language_code Optional. IETF language tag of the user's language
	language_code string
	// is_premium Optional. True, if this user is a Telegram Premium user
	is_premium bool
	// added_to_attachment_menu Optional. True, if this user added the bot to the attachment menu
	added_to_attachment_menu bool
	// can_join_groups Optional. True, if the bot can be invited to groups. Returned only in getMe.
	can_join_groups bool
	// can_read_all_group_messages Optional. True, if privacy mode is disabled for the bot. Returned only in getMe.
	can_read_all_group_messages bool
	// supports_inline_queries Optional. True, if the bot supports inline queries. Returned only in getMe.
	supports_inline_queries bool
}
```

User This object represents a Telegram user or bot.

[[Return to contents]](#Contents)

## UserProfilePhotos

```v
struct UserProfilePhotos {
pub:
	// total_count Total number of profile pictures the target user has
	total_count int
	// photos Requested profile pictures (in up to 4 sizes each)
	photos [][]PhotoSize
}
```

UserProfilePhotos This object represent a user's profile pictures.

[[Return to contents]](#Contents)

## UserShared

```v
struct UserShared {
	// request_id Identifier of the request
	request_id int
	// user_id Identifier of the shared user. This number may have more than 32 significant bits and some programming languages may have difficulty/silent defects in interpreting it. But it has at most 52 significant bits, so a 64-bit integer or double-precision float type are safe for storing this identifier. The bot may not have access to the user and could be unable to use this identifier, unless the user is already known to the bot by some other means.
	user_id i64
}
```

UserShared This object contains information about the user whose identifier was shared with the bot using a KeyboardButtonRequestUser button.

[[Return to contents]](#Contents)

## Venue

```v
struct Venue {
pub:
	// location Venue location. Can't be a live location
	location Location
	// title Name of the venue
	title string
	// address Address of the venue
	address string
	// foursquare_id Optional. Foursquare identifier of the venue
	foursquare_id string
	// foursquare_type Optional. Foursquare type of the venue. (For example, “arts_entertainment/default”, “arts_entertainment/aquarium” or “food/icecream”.)
	foursquare_type string
	// google_place_id Optional. Google Places identifier of the venue
	google_place_id string
	// google_place_type Optional. Google Places type of the venue. (See supported types.)
	google_place_type string
}
```

Venue This object represents a venue.

[[Return to contents]](#Contents)

## Video

```v
struct Video {
pub:
	// file_id Identifier for this file, which can be used to download or reuse the file
	file_id string
	// file_unique_id Unique identifier for this file, which is supposed to be the same over time and for different bots. Can't be used to download or reuse the file.
	file_unique_id string
	// width Video width as defined by sender
	width int
	// height Video height as defined by sender
	height int
	// duration Duration of the video in seconds as defined by sender
	duration int
	// thumb Optional. Video thumbnail
	thumb PhotoSize
	// file_name Optional. Original filename as defined by sender
	file_name string
	// mime_type Optional. MIME type of the file as defined by sender
	mime_type string
	// file_size Optional. File size in bytes. It can be bigger than 2^31 and some programming languages may have difficulty/silent defects in interpreting it. But it has at most 52 significant bits, so a signed 64-bit integer or double-precision float type are safe for storing this value.
	file_size i64
}
```

Video This object represents a video file.

[[Return to contents]](#Contents)

## VideoChatEnded

```v
struct VideoChatEnded {
pub:
	// duration Video chat duration in seconds
	duration int
}
```

VideoChatEnded This object represents a service message about a video chat ended in the chat.

[[Return to contents]](#Contents)

## VideoChatParticipantsInvited

```v
struct VideoChatParticipantsInvited {
pub:
	// users New members that were invited to the video chat
	users []User
}
```

VideoChatParticipantsInvited This object represents a service message about new members invited to a video chat.

[[Return to contents]](#Contents)

## VideoChatScheduled

```v
struct VideoChatScheduled {
pub:
	// start_date Point in time (Unix timestamp) when the video chat is supposed to be started by a chat administrator
	start_date int
}
```

VideoChatScheduled This object represents a service message about a video chat scheduled in the chat.

[[Return to contents]](#Contents)

## VideoChatStarted

```v
struct VideoChatStarted {
}
```

VideoChatStarted This object represents a service message about a video chat started in the chat. Currently holds no information.

[[Return to contents]](#Contents)

## VideoNote

```v
struct VideoNote {
pub:
	// file_id Identifier for this file, which can be used to download or reuse the file
	file_id string
	// file_unique_id Unique identifier for this file, which is supposed to be the same over time and for different bots. Can't be used to download or reuse the file.
	file_unique_id string
	// length Video width and height (diameter of the video message) as defined by sender
	length int
	// duration Duration of the video in seconds as defined by sender
	duration int
	// thumb Optional. Video thumbnail
	thumb PhotoSize
	// file_size Optional. File size in bytes
	file_size int
}
```

VideoNote This object represents a video message (available in Telegram apps as of v.4.0).

[[Return to contents]](#Contents)

## Voice

```v
struct Voice {
pub:
	// file_id Identifier for this file, which can be used to download or reuse the file
	file_id string
	// file_unique_id Unique identifier for this file, which is supposed to be the same over time and for different bots. Can't be used to download or reuse the file.
	file_unique_id string
	// duration Duration of the audio in seconds as defined by sender
	duration int
	// mime_type Optional. MIME type of the file as defined by sender
	mime_type string
	// file_size Optional. File size in bytes. It can be bigger than 2^31 and some programming languages may have difficulty/silent defects in interpreting it. But it has at most 52 significant bits, so a signed 64-bit integer or double-precision float type are safe for storing this value.
	file_size i64
}
```

Voice This object represents a voice note.

[[Return to contents]](#Contents)

## WebAppData

```v
struct WebAppData {
pub:
	// data The data. Be aware that a bad client can send arbitrary data in this field.
	data string
	// button_text Text of the web_app keyboard button from which the Web App was opened. Be aware that a bad client can send arbitrary data in this field.
	button_text string
}
```

WebAppData Describes data sent from a Web App to the bot.

[[Return to contents]](#Contents)

## WebAppInfo

```v
struct WebAppInfo {
pub:
	// url An HTTPS URL of a Web App to be opened with additional data as specified in Initializing Web Apps
	url string
}
```

WebAppInfo Describes a Web App.

[[Return to contents]](#Contents)

## WebhookInfo

```v
struct WebhookInfo {
pub:
	// url Webhook URL, may be empty if webhook is not set up
	url string
	// has_custom_certificate True, if a custom certificate was provided for webhook certificate checks
	has_custom_certificate bool
	// pending_update_count Number of updates awaiting delivery
	pending_update_count int
	// ip_address Optional. Currently used webhook IP address
	ip_address string
	// last_error_date Optional. Unix time for the most recent error that happened when trying to deliver an update via webhook
	last_error_date int
	// last_error_message Optional. Error message in human-readable format for the most recent error that happened when trying to deliver an update via webhook
	last_error_message string
	// last_synchronization_error_date Optional. Unix time of the most recent error that happened when trying to synchronize available updates with Telegram datacenters
	last_synchronization_error_date int
	// max_connections Optional. The maximum allowed number of simultaneous HTTPS connections to the webhook for update delivery
	max_connections int
	// allowed_updates Optional. A list of update types the bot is subscribed to. Defaults to all update types except chat_member
	allowed_updates []string
}
```

WebhookInfo Describes the current status of a webhook.

[[Return to contents]](#Contents)

## WriteAccessAllowed

```v
struct WriteAccessAllowed {
}
```

WriteAccessAllowed This object represents a service message about a user allowing a bot added to the attachment menu to write messages. Currently holds no information.

[[Return to contents]](#Contents)

#### Powered by vdoc. Generated on: 27 Feb 2023 00:16:31
