module vtelegram

// Update This object represents an incoming update. At most one of the optional parameters can be present in any given update.
pub struct Update {
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

// WebhookInfo Describes the current status of a webhook.
pub struct WebhookInfo {
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

// User This object represents a Telegram user or bot.
pub struct User {
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

// Chat This object represents a chat.
pub struct Chat {
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
	// emoji_status_expiration_date Optional. Expiration date of the emoji status of the other party in a private chat, if any. Returned only in getChat.
	emoji_status_expiration_date int
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
	pinned_message &Message = unsafe {nil}
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

// Message This object represents a message.
pub struct Message {
pub mut:
	// message_id Unique message identifier inside this chat
	message_id int
	// message_thread_id Optional. Unique identifier of a message thread to which the message belongs; for supergroups only
	message_thread_id int
	// from Optional. Sender of the message; empty for messages sent to channels. For backward compatibility, the field contains a fake sender user in non-channel chats, if the message was sent on behalf of a chat.
	from User
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
	reply_to_message &Message = unsafe {nil}
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
	// story Optional. Message is a forwarded story
	story Story
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
	pinned_message &Message = unsafe {nil}
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

// MessageId This object represents a unique message identifier.
pub struct MessageId {
pub:
	// message_id Unique message identifier
	message_id int
}

// MessageEntity This object represents one special entity in a text message. For example, hashtags, usernames, URLs, etc.
pub struct MessageEntity {
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

// PhotoSize This object represents one size of a photo or a file / sticker thumbnail.
pub struct PhotoSize {
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

// Animation This object represents an animation file (GIF or H.264/MPEG-4 AVC video without sound).
pub struct Animation {
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
	// thumbnail Optional. Animation thumbnail as defined by sender
	thumbnail PhotoSize
	// file_name Optional. Original animation filename as defined by sender
	file_name string
	// mime_type Optional. MIME type of the file as defined by sender
	mime_type string
	// file_size Optional. File size in bytes. It can be bigger than 2^31 and some programming languages may have difficulty/silent defects in interpreting it. But it has at most 52 significant bits, so a signed 64-bit integer or double-precision float type are safe for storing this value.
	file_size i64
}

// Audio This object represents an audio file to be treated as music by the Telegram clients.
pub struct Audio {
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
	// thumbnail Optional. Thumbnail of the album cover to which the music file belongs
	thumbnail PhotoSize
}

// Document This object represents a general file (as opposed to photos, voice messages and audio files).
pub struct Document {
pub:
	// file_id Identifier for this file, which can be used to download or reuse the file
	file_id string
	// file_unique_id Unique identifier for this file, which is supposed to be the same over time and for different bots. Can't be used to download or reuse the file.
	file_unique_id string
	// thumbnail Optional. Document thumbnail as defined by sender
	thumbnail PhotoSize
	// file_name Optional. Original filename as defined by sender
	file_name string
	// mime_type Optional. MIME type of the file as defined by sender
	mime_type string
	// file_size Optional. File size in bytes. It can be bigger than 2^31 and some programming languages may have difficulty/silent defects in interpreting it. But it has at most 52 significant bits, so a signed 64-bit integer or double-precision float type are safe for storing this value.
	file_size i64
}

// Video This object represents a video file.
pub struct Video {
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
	// thumbnail Optional. Video thumbnail
	thumbnail PhotoSize
	// file_name Optional. Original filename as defined by sender
	file_name string
	// mime_type Optional. MIME type of the file as defined by sender
	mime_type string
	// file_size Optional. File size in bytes. It can be bigger than 2^31 and some programming languages may have difficulty/silent defects in interpreting it. But it has at most 52 significant bits, so a signed 64-bit integer or double-precision float type are safe for storing this value.
	file_size i64
}

// VideoNote This object represents a video message (available in Telegram apps as of v.4.0).
pub struct VideoNote {
pub:
	// file_id Identifier for this file, which can be used to download or reuse the file
	file_id string
	// file_unique_id Unique identifier for this file, which is supposed to be the same over time and for different bots. Can't be used to download or reuse the file.
	file_unique_id string
	// length Video width and height (diameter of the video message) as defined by sender
	length int
	// duration Duration of the video in seconds as defined by sender
	duration int
	// thumbnail Optional. Video thumbnail
	thumbnail PhotoSize
	// file_size Optional. File size in bytes
	file_size int
}

// Voice This object represents a voice note.
pub struct Voice {
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

// Contact This object represents a phone contact.
pub struct Contact {
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

// Dice This object represents an animated emoji that displays a random value.
pub struct Dice {
pub:
	// emoji Emoji on which the dice throw animation is based
	emoji string
	// value Value of the dice, 1-6 for “”, “” and “” base emoji, 1-5 for “” and “” base emoji, 1-64 for “” base emoji
	value int
}

// PollOption This object contains information about one answer option in a poll.
pub struct PollOption {
pub:
	// text Option text, 1-100 characters
	text string
	// voter_count Number of users that voted for this option
	voter_count int
}

// PollAnswer This object represents an answer of a user in a non-anonymous poll.
pub struct PollAnswer {
pub:
	// poll_id Unique poll identifier
	poll_id string
	// voter_chat Optional. The chat that changed the answer to the poll, if the voter is anonymous
	voter_chat Chat
	// Optional. user The user, who changed the answer to the poll
	user User
	// option_ids 0-based identifiers of answer options, chosen by the user. May be empty if the user retracted their vote.
	option_ids []int
}

// Poll This object contains information about a poll.
pub struct Poll {
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

// Location This object represents a point on the map.
pub struct Location {
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

// Venue This object represents a venue.
pub struct Venue {
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

// WebAppData Describes data sent from a Web App to the bot.
pub struct WebAppData {
pub:
	// data The data. Be aware that a bad client can send arbitrary data in this field.
	data string
	// button_text Text of the web_app keyboard button from which the Web App was opened. Be aware that a bad client can send arbitrary data in this field.
	button_text string
}

// ProximityAlertTriggered This object represents the content of a service message, sent whenever a user in the chat triggers a proximity alert set by another user.
pub struct ProximityAlertTriggered {
pub:
	// traveler User that triggered the alert
	traveler User
	// watcher User that set the alert
	watcher User
	// distance The distance between the users
	distance int
}

// MessageAutoDeleteTimerChanged This object represents a service message about a change in auto-delete timer settings.
pub struct MessageAutoDeleteTimerChanged {
pub:
	// message_auto_delete_time New auto-delete time for messages in the chat; in seconds
	message_auto_delete_time int = -1
}

// ForumTopicCreated This object represents a service message about a new forum topic created in the chat.
pub struct ForumTopicCreated {
pub:
	// name Name of the topic
	name string
	// icon_color Color of the topic icon in RGB format
	icon_color int
	// icon_custom_emoji_id Optional. Unique identifier of the custom emoji shown as the topic icon
	icon_custom_emoji_id string
}

// ForumTopicClosed This object represents a service message about a forum topic closed in the chat. Currently holds no information.
pub struct ForumTopicClosed {
}

// ForumTopicEdited This object represents a service message about an edited forum topic.
pub struct ForumTopicEdited {
pub:
	// name Optional. New name of the topic, if it was edited
	name string
	// icon_custom_emoji_id Optional. New identifier of the custom emoji shown as the topic icon, if it was edited; an empty string if the icon was removed
	icon_custom_emoji_id string
}

// ForumTopicReopened This object represents a service message about a forum topic reopened in the chat. Currently holds no information.
pub struct ForumTopicReopened {
}

// GeneralForumTopicHidden This object represents a service message about General forum topic hidden in the chat. Currently holds no information.
pub struct GeneralForumTopicHidden {
}

// GeneralForumTopicUnhidden This object represents a service message about General forum topic unhidden in the chat. Currently holds no information.
pub struct GeneralForumTopicUnhidden {
}

// WriteAccessAllowed This object represents a service message about a user allowing a bot added to the attachment menu to write messages. Currently holds no information.
pub struct WriteAccessAllowed {
pub:
	// from_request Optional. True, if the access was granted after the user accepted an explicit request from a Web App sent by the method requestWriteAccess
	from_request bool
	// web_app_name Optional. Name of the Web App which was launched from a link
	web_app_name string
	// from_attachment_menu Optional. True, if the access was granted when the bot was added to the attachment or side menu
	from_attachment_menu bool 
}

// VideoChatScheduled This object represents a service message about a video chat scheduled in the chat.
pub struct VideoChatScheduled {
pub:
	// start_date Point in time (Unix timestamp) when the video chat is supposed to be started by a chat administrator
	start_date int
}

// VideoChatStarted This object represents a service message about a video chat started in the chat. Currently holds no information.
pub struct VideoChatStarted {
}

// VideoChatEnded This object represents a service message about a video chat ended in the chat.
pub struct VideoChatEnded {
pub:
	// duration Video chat duration in seconds
	duration int
}

// VideoChatParticipantsInvited This object represents a service message about new members invited to a video chat.
pub struct VideoChatParticipantsInvited {
pub:
	// users New members that were invited to the video chat
	users []User
}

// UserProfilePhotos This object represent a user's profile pictures.
pub struct UserProfilePhotos {
pub:
	// total_count Total number of profile pictures the target user has
	total_count int
	// photos Requested profile pictures (in up to 4 sizes each)
	photos [][]PhotoSize
}

// File This object represents a file ready to be downloaded. The file can be downloaded via the link https://api.telegram.org/file/bot<token>/<file_path>. It is guaranteed that the link will be valid for at least 1 hour. When the link expires, a new one can be requested by calling getFile.
pub struct File {
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

// WebAppInfo Describes a Web App.
pub struct WebAppInfo {
pub:
	// url An HTTPS URL of a Web App to be opened with additional data as specified in Initializing Web Apps
	url string
}

// ReplyKeyboardMarkup This object represents a custom keyboard with reply options (see Introduction to bots for details and examples).
pub struct ReplyKeyboardMarkup {
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

// KeyboardButton This object represents one button of the reply keyboard. For simple text buttons String can be used instead of this object to specify text of the button. Optional fields web_app, request_contact, request_location, and request_poll are mutually exclusive.
pub struct KeyboardButton {
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

// KeyboardButtonExt extends KeyboardButton and includes all other parameters
pub struct KeyboardButtonExt {
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

// ReplyKeyboardMarkup This object represents a custom keyboard with reply options (see Introduction to bots for details and examples).
pub struct ReplyKeyboardMarkupExt {
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

// KeyboardButtonPollType This object represents type of a poll, which is allowed to be created and sent when the corresponding button is pressed.
pub struct KeyboardButtonPollType {
pub:
	// type Optional. If quiz is passed, the user will be allowed to create only polls in the quiz mode. If regular is passed, only regular polls will be allowed. Otherwise, the user will be allowed to create a poll of any type.
	@type string
}

// ReplyKeyboardRemove Upon receiving a message with this object, Telegram clients will remove the current custom keyboard and display the default letter-keyboard. By default, custom keyboards are displayed until a new keyboard is sent by a bot. An exception is made for one-time keyboards that are hidden immediately after the user presses a button (see ReplyKeyboardMarkup).
pub struct ReplyKeyboardRemove {
pub:
	// remove_keyboard Requests clients to remove the custom keyboard (user will not be able to summon this keyboard; if you want to hide the keyboard from sight but keep it accessible, use one_time_keyboard in ReplyKeyboardMarkup)
	remove_keyboard bool
	// selective Optional. Use this parameter if you want to remove the keyboard for specific users only. Targets: 1) users that are @mentioned in the text of the Message object; 2) if the bot's message is a reply (has reply_to_message_id), sender of the original message.  Example: A user votes in a poll, bot returns confirmation message in reply to the vote and removes the keyboard for that user, while still showing the keyboard with poll options to users who haven't voted yet.
	selective bool
}

// InlineKeyboardMarkup This object represents an inline keyboard that appears right next to the message it belongs to.
pub struct InlineKeyboardMarkup {
pub mut:
	// inline_keyboard Array of button rows, each represented by an Array of InlineKeyboardButton objects
	inline_keyboard [][]InlineKeyboardButton
}

// InlineKeyboardButton This object represents one button of an inline keyboard. You must use exactly one of the optional fields.
[params]
pub struct InlineKeyboardButton {
pub mut:
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
	// switch_inline_query_chosen_chat Optional. If set, pressing the button will prompt the user to select one of their chats of the specified type, open that chat and insert the bot's username and the specified inline query in the input field
	switch_inline_query_chosen_chat SwitchInlineQueryChosenChat
	// callback_game Optional. Description of the game that will be launched when the user presses the button.  NOTE: This type of button must always be the first button in the first row.
	callback_game CallbackGame
	// pay Optional. Specify True, to send a Pay button.  NOTE: This type of button must always be the first button in the first row and can only be used in invoice messages.
	pay bool
}

// SwitchInlineQueryChosenChat This object represents an inline button that switches the current user to inline mode in a chosen chat, with an optional default inline query.
pub struct SwitchInlineQueryChosenChat {
	// query Optional. The default inline query to be inserted in the input field. If left empty, only the bot's username will be inserted
	query string
	// allow_user_chats Optional. True, if private chats with users can be chosen
	allow_user_chats bool
	// allow_bot_chats Optional. True, if private chats with bots can be chosen
	allow_bot_chats bool
	// allow_group_chats Optional. True, if group and supergroup chats can be chosen
	allow_group_chats bool
	// allow_channel_chats Optional. True, if channel chats can be chosen
	allow_channel_chats bool
}

// LoginUrl This object represents a parameter of the inline keyboard button used to automatically authorize a user. Serves as a great replacement for the Telegram Login Widget when the user is coming from Telegram. All the user needs to do is tap/click a button and confirm that they want to log in:
pub struct LoginUrl {
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

// CallbackQuery This object represents an incoming callback query from a callback button in an inline keyboard. If the button that originated the query was attached to a message sent by the bot, the field message will be present. If the button was attached to a message sent via the bot (in inline mode), the field inline_message_id will be present. Exactly one of the fields data or game_short_name will be present.
pub struct CallbackQuery {
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

// ForceReply Upon receiving a message with this object, Telegram clients will display a reply interface to the user (act as if the user has selected the bot's message and tapped 'Reply'). This can be extremely useful if you want to create user-friendly step-by-step interfaces without having to sacrifice privacy mode.
pub struct ForceReply {
pub:
	// force_reply Shows reply interface to the user, as if they manually selected the bot's message and tapped 'Reply'
	force_reply bool
	// input_field_placeholder Optional. The placeholder to be shown in the input field when the reply is active; 1-64 characters
	input_field_placeholder string
	// selective Optional. Use this parameter if you want to force reply from specific users only. Targets: 1) users that are @mentioned in the text of the Message object; 2) if the bot's message is a reply (has reply_to_message_id), sender of the original message.
	selective bool
}

// ChatPhoto This object represents a chat photo.
pub struct ChatPhoto {
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

// ChatInviteLink Represents an invite link for a chat.
pub struct ChatInviteLink {
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

// ChatAdministratorRights Represents the rights of an administrator in a chat.
pub struct ChatAdministratorRights {
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
	// can_post_stories Optional. True, if the administrator can post stories in the channel; channels only
	can_post_stories bool
	// can_edit_stories Optional. True, if the administrator can edit stories posted by other users; channels only
	can_edit_stories bool 
	// can_delete_stories Optional. True, if the administrator can delete stories posted by other users; channels only
	can_delete_stories bool 
	// can_manage_topics Optional. True, if the user is allowed to create, rename, close, and reopen forum topics; supergroups only
	can_manage_topics bool
}

// ChatMemberOwner Represents a chat member that owns the chat and has all administrator privileges.
pub struct ChatMemberOwner {
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

// ChatMemberAdministrator Represents a chat member that has some additional privileges.
pub struct ChatMemberAdministrator {
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
	// can_post_stories Optional. True, if the administrator can post stories in the channel; channels only
	can_post_stories bool
	// can_edit_stories Optional. True, if the administrator can edit stories posted by other users; channels only
	can_edit_stories bool 
	// can_delete_stories Optional. True, if the administrator can delete stories posted by other users; channels only
	can_delete_stories bool 
	// can_manage_topics Optional. True, if the user is allowed to create, rename, close, and reopen forum topics; supergroups only
	can_manage_topics bool
	// custom_title Optional. Custom title for this user
	custom_title string
}

// ChatMemberMember Represents a chat member that has no additional privileges or restrictions.
pub struct ChatMemberMember {
pub:
	// status The member's status in the chat, always “member”
	status string
	// user Information about the user
	user User
}

// ChatMemberRestricted Represents a chat member that is under certain restrictions in the chat. Supergroups only.
pub struct ChatMemberRestricted {
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

// ChatMemberLeft Represents a chat member that isn't currently a member of the chat, but may join it themselves.
pub struct ChatMemberLeft {
pub:
	// status The member's status in the chat, always “left”
	status string
	// user Information about the user
	user User
}

// ChatMemberBanned Represents a chat member that was banned in the chat and can't return to the chat or view chat messages.
pub struct ChatMemberBanned {
pub:
	// status The member's status in the chat, always “kicked”
	status string
	// user Information about the user
	user User
	// until_date Date when restrictions will be lifted for this user; unix time. If 0, then the user is banned forever
	until_date int
}

// ChatMember - combined structs of all member roles, so that the V's json package can decode it
// can be handled by 'status' value
// This object contains information about one member of a chat. Currently, the following 6 types of chat members are supported:
// ChatMemberOwner
// ChatMemberAdministrator
// ChatMemberMember
// ChatMemberRestricted
// ChatMemberLeft
// ChatMemberBanned
// https://core.telegram.org/bots/api#chatmember
pub struct ChatMember {
pub:
	// ChatMemberOwner
	// status The member's status in the chat, always “creator”
	status string
	// user Information about the user
	user User
	// is_anonymous True, if the user's presence in the chat is hidden
	is_anonymous bool
	// custom_title Optional. Custom title for this user
	custom_title string
	// ChatMemberAdministrator
	// status The member's status in the chat, always “administrator”
	// status string
	// user Information about the user
	// user User
	// can_be_edited True, if the bot is allowed to edit administrator privileges of that user
	can_be_edited bool
	// is_anonymous True, if the user's presence in the chat is hidden
	// is_anonymous bool
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
	// custom_title string
	// ChatMemberMember
	// status The member's status in the chat, always “member”
	// status string
	// user Information about the user
	// user User
	// ChatMemberRestricted
	// status The member's status in the chat, always “restricted”
	// status string
	// user Information about the user
	// user User
	// is_member True, if the user is a member of the chat at the moment of the request
	is_member bool
	// can_change_info True, if the user is allowed to change the chat title, photo and other settings
	// can_change_info bool
	// can_invite_users True, if the user is allowed to invite new users to the chat
	// can_invite_users bool
	// can_pin_messages True, if the user is allowed to pin messages
	// can_pin_messages bool
	// can_manage_topics True, if the user is allowed to create forum topics
	// can_manage_topics bool
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
	// until_date int
	// ChatMemberLeft
	// status The member's status in the chat, always “left”
	// status string
	// user Information about the user
	// user User
	// ChatMemberBanned
	// status The member's status in the chat, always “kicked”
	// status string
	// user Information about the user
	// user User
	// until_date Date when restrictions will be lifted for this user; unix time. If 0, then the user is banned forever
	until_date int
}

// ChatMemberUpdated This object represents changes in the status of a chat member.
pub struct ChatMemberUpdated {
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
	// via_chat_folder_invite_link Optional. True, if the user joined the chat via a chat folder invite link
	via_chat_folder_invite_link bool
}

// ChatJoinRequest Represents a join request sent to a chat.
pub struct ChatJoinRequest {
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

// ChatPermissions Describes actions that a non-administrator user is allowed to take in a chat.
pub struct ChatPermissions {
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

// ChatLocation Represents a location to which a chat is connected.
pub struct ChatLocation {
pub:
	// location The location to which the supergroup is connected. Can't be a live location.
	location Location
	// address Location address; 1-64 characters, as defined by the chat owner
	address string
}

// ForumTopic This object represents a forum topic.
pub struct ForumTopic {
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

// BotCommand This object represents a bot command.
pub struct BotCommand {
pub:
	// command Text of the command; 1-32 characters. Can contain only lowercase English letters, digits and underscores.
	command string
	// description Description of the command; 1-256 characters.
	description string
}

// BotCommandScopeDefault Represents the default scope of bot commands. Default commands are used if no commands with a narrower scope are specified for the user.
pub struct BotCommandScopeDefault {
pub:
	// type Scope type, must be default
	@type string
}

// BotCommandScopeAllPrivateChats Represents the scope of bot commands, covering all private chats.
pub struct BotCommandScopeAllPrivateChats {
pub:
	// type Scope type, must be all_private_chats
	@type string
}

// BotCommandScopeAllGroupChats Represents the scope of bot commands, covering all group and supergroup chats.
pub struct BotCommandScopeAllGroupChats {
pub:
	// type Scope type, must be all_group_chats
	@type string
}

// BotCommandScopeAllChatAdministrators Represents the scope of bot commands, covering all group and supergroup chat administrators.
pub struct BotCommandScopeAllChatAdministrators {
pub:
	// type Scope type, must be all_chat_administrators
	@type string
}

// BotCommandScopeChat Represents the scope of bot commands, covering a specific chat.
pub struct BotCommandScopeChat {
pub:
	// type Scope type, must be chat
	@type string
	// chat_id Unique identifier for the target chat or username of the target supergroup (in the format @supergroupusername)
	chat_id string
}

// BotCommandScopeChatAdministrators Represents the scope of bot commands, covering all administrators of a specific group or supergroup chat.
pub struct BotCommandScopeChatAdministrators {
pub:
	// type Scope type, must be chat_administrators
	@type string
	// chat_id Unique identifier for the target chat or username of the target supergroup (in the format @supergroupusername)
	chat_id string
}

// BotCommandScopeChatMember Represents the scope of bot commands, covering a specific member of a group or supergroup chat.
pub struct BotCommandScopeChatMember {
pub:
	// type Scope type, must be chat_member
	@type string
	// chat_id Unique identifier for the target chat or username of the target supergroup (in the format @supergroupusername)
	chat_id string
	// user_id Unique identifier of the target user
	user_id int
}

// MenuButtonCommands Represents a menu button, which opens the bot's list of commands.
pub struct MenuButtonCommands {
pub:
	// type Type of the button, must be commands
	@type string
}

// MenuButtonWebApp Represents a menu button, which launches a Web App.
pub struct MenuButtonWebApp {
pub:
	// type Type of the button, must be web_app
	@type string
	// text Text on the button
	text string
	// web_app Description of the Web App that will be launched when the user presses the button. The Web App will be able to send an arbitrary message on behalf of the user using the method answerWebAppQuery.
	web_app WebAppInfo
}

// MenuButtonDefault Describes that no specific value for the menu button was set.
pub struct MenuButtonDefault {
pub:
	// type Type of the button, must be default
	@type string
}

// ResponseParameters Describes why a request was unsuccessful.
pub struct ResponseParameters {
pub:
	// migrate_to_chat_id Optional. The group has been migrated to a supergroup with the specified identifier. This number may have more than 32 significant bits and some programming languages may have difficulty/silent defects in interpreting it. But it has at most 52 significant bits, so a signed 64-bit integer or double-precision float type are safe for storing this identifier.
	migrate_to_chat_id i64
	// retry_after Optional. In case of exceeding flood control, the number of seconds left to wait before the request can be repeated
	retry_after int
}

// Story 
pub struct Story {
}

// Sticker This object represents a sticker.
pub struct Sticker {
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
	// thumbnail Optional. Sticker thumbnail in the .WEBP or .JPG format
	thumbnail PhotoSize
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
	// needs_repainting Optional.
	// True, if the sticker must be repainted to a text color in messages, the color of the Telegram Premium badge in emoji status, white color on chat photos, or another appropriate color in other places
	needs_repainting bool
	// file_size Optional. File size in bytes
	file_size int
}

// StickerSet This object represents a sticker set.
pub struct StickerSet {
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
	// thumbnail Optional. Sticker set thumbnail in the .WEBP, .TGS, or .WEBM format
	thumbnail PhotoSize
}

// MaskPosition This object describes the position on faces where a mask should be placed by default.
pub struct MaskPosition {
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

// This object represents a button to be shown above inline query results. You must use exactly one of the optional fields.
pub struct InlineQueryResultsButton {
pub:
	// text Label text on the button
	text string
	// web_app Optional. Description of the Web App that will be launched when the user presses the button. The Web App will be able to switch back to the inline mode using the method switchInlineQuery inside the Web App.
	web_app WebAppInfo
	// start_parameter Optional. Deep-linking parameter for the /start message sent to the bot when a user presses the button. 1-64 characters, only A-Z, a-z, 0-9, _ and - are allowed.
	// Example: An inline bot that sends YouTube videos can ask the user to connect the bot to their YouTube account to adapt search results accordingly. To do this, it displays a 'Connect your YouTube account' button above the results, or even before showing any. The user presses the button, switches to a private chat with the bot and, in doing so, passes a start parameter that instructs the bot to return an OAuth link. Once done, the bot can offer a switch_inline button so that the user can easily return to the chat where they wanted to use the bot's inline capabilities.
	start_parameter string
}

// InlineQuery This object represents an incoming inline query. When the user sends an empty query, your bot could return some default or trending results.
pub struct InlineQuery {
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

// InlineQueryResultArticle Represents a link to an article or web page.
pub struct InlineQueryResultArticle {
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
	// thumbnail_url Optional. Url of the thumbnail for the result
	thumbnail_url string
	// thumbnail_width Optional. Thumbnail width
	thumbnail_width int
	// thumbnail_height Optional. Thumbnail height
	thumbnail_height int
}

// InlineQueryResultPhoto Represents a link to a photo. By default, this photo will be sent by the user with optional caption. Alternatively, you can use input_message_content to send a message with the specified content instead of the photo.
pub struct InlineQueryResultPhoto {
pub:
	// type Type of the result, must be photo
	@type string
	// id Unique identifier for this result, 1-64 bytes
	id string
	// photo_url A valid URL of the photo. Photo must be in JPEG format. Photo size must not exceed 5MB
	photo_url string
	// thumbnail_url URL of the thumbnail for the photo
	thumbnail_url string
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

// InlineQueryResultGif Represents a link to an animated GIF file. By default, this animated GIF file will be sent by the user with optional caption. Alternatively, you can use input_message_content to send a message with the specified content instead of the animation.
pub struct InlineQueryResultGif {
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
	// thumbnail_url URL of the static (JPEG or GIF) or animated (MPEG4) thumbnail for the result
	thumbnail_url string
	// thumbnail_mime_type Optional. MIME type of the thumbnail, must be one of “image/jpeg”, “image/gif”, or “video/mp4”. Defaults to “image/jpeg”
	thumbnail_mime_type string
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

// InlineQueryResultMpeg4Gif Represents a link to a video animation (H.264/MPEG-4 AVC video without sound). By default, this animated MPEG-4 file will be sent by the user with optional caption. Alternatively, you can use input_message_content to send a message with the specified content instead of the animation.
pub struct InlineQueryResultMpeg4Gif {
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
	// thumbnail_url URL of the static (JPEG or GIF) or animated (MPEG4) thumbnail for the result
	thumbnail_url string
	// thumbnail_mime_type Optional. MIME type of the thumbnail, must be one of “image/jpeg”, “image/gif”, or “video/mp4”. Defaults to “image/jpeg”
	thumbnail_mime_type string
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

// InlineQueryResultVideo Represents a link to a page containing an embedded video player or a video file. By default, this video file will be sent by the user with an optional caption. Alternatively, you can use input_message_content to send a message with the specified content instead of the video.
pub struct InlineQueryResultVideo {
pub:
	// type Type of the result, must be video
	@type string
	// id Unique identifier for this result, 1-64 bytes
	id string
	// video_url A valid URL for the embedded video player or video file
	video_url string
	// mime_type MIME type of the content of the video URL, “text/html” or “video/mp4”
	mime_type string
	// thumbnail_url URL of the thumbnail (JPEG only) for the video
	thumbnail_url string
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

// InlineQueryResultAudio Represents a link to an MP3 audio file. By default, this audio file will be sent by the user. Alternatively, you can use input_message_content to send a message with the specified content instead of the audio.
pub struct InlineQueryResultAudio {
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

// InlineQueryResultVoice Represents a link to a voice recording in an .OGG container encoded with OPUS. By default, this voice recording will be sent by the user. Alternatively, you can use input_message_content to send a message with the specified content instead of the the voice message.
pub struct InlineQueryResultVoice {
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

// InlineQueryResultDocument Represents a link to a file. By default, this file will be sent by the user with an optional caption. Alternatively, you can use input_message_content to send a message with the specified content instead of the file. Currently, only .PDF and .ZIP files can be sent using this method.
pub struct InlineQueryResultDocument {
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
	// thumbnail_url Optional. URL of the thumbnail (JPEG only) for the file
	thumbnail_url string
	// thumbnail_width Optional. Thumbnail width
	thumbnail_width int
	// thumbnail_height Optional. Thumbnail height
	thumbnail_height int
}

// InlineQueryResultLocation Represents a location on a map. By default, the location will be sent by the user. Alternatively, you can use input_message_content to send a message with the specified content instead of the location.
pub struct InlineQueryResultLocation {
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
	// thumbnail_url Optional. Url of the thumbnail for the result
	thumbnail_url string
	// thumbnail_width Optional. Thumbnail width
	thumbnail_width int
	// thumbnail_height Optional. Thumbnail height
	thumbnail_height int
}

// InlineQueryResultVenue Represents a venue. By default, the venue will be sent by the user. Alternatively, you can use input_message_content to send a message with the specified content instead of the venue.
pub struct InlineQueryResultVenue {
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
	// thumbnail_url Optional. Url of the thumbnail for the result
	thumbnail_url string
	// thumbnail_width Optional. Thumbnail width
	thumbnail_width int
	// thumbnail_height Optional. Thumbnail height
	thumbnail_height int
}

// InlineQueryResultContact Represents a contact with a phone number. By default, this contact will be sent by the user. Alternatively, you can use input_message_content to send a message with the specified content instead of the contact.
pub struct InlineQueryResultContact {
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
	// thumbnail_url Optional. Url of the thumbnail for the result
	thumbnail_url string
	// thumbnail_width Optional. Thumbnail width
	thumbnail_width int
	// thumbnail_height Optional. Thumbnail height
	thumbnail_height int
}

// InlineQueryResultGame Represents a Game.
pub struct InlineQueryResultGame {
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

// InlineQueryResultCachedPhoto Represents a link to a photo stored on the Telegram servers. By default, this photo will be sent by the user with an optional caption. Alternatively, you can use input_message_content to send a message with the specified content instead of the photo.
pub struct InlineQueryResultCachedPhoto {
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

// InlineQueryResultCachedGif Represents a link to an animated GIF file stored on the Telegram servers. By default, this animated GIF file will be sent by the user with an optional caption. Alternatively, you can use input_message_content to send a message with specified content instead of the animation.
pub struct InlineQueryResultCachedGif {
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

// InlineQueryResultCachedMpeg4Gif Represents a link to a video animation (H.264/MPEG-4 AVC video without sound) stored on the Telegram servers. By default, this animated MPEG-4 file will be sent by the user with an optional caption. Alternatively, you can use input_message_content to send a message with the specified content instead of the animation.
pub struct InlineQueryResultCachedMpeg4Gif {
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

// InlineQueryResultCachedSticker Represents a link to a sticker stored on the Telegram servers. By default, this sticker will be sent by the user. Alternatively, you can use input_message_content to send a message with the specified content instead of the sticker.
pub struct InlineQueryResultCachedSticker {
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

// InlineQueryResultCachedDocument Represents a link to a file stored on the Telegram servers. By default, this file will be sent by the user with an optional caption. Alternatively, you can use input_message_content to send a message with the specified content instead of the file.
pub struct InlineQueryResultCachedDocument {
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

// InlineQueryResultCachedVideo Represents a link to a video file stored on the Telegram servers. By default, this video file will be sent by the user with an optional caption. Alternatively, you can use input_message_content to send a message with the specified content instead of the video.
pub struct InlineQueryResultCachedVideo {
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

// InlineQueryResultCachedVoice Represents a link to a voice message stored on the Telegram servers. By default, this voice message will be sent by the user. Alternatively, you can use input_message_content to send a message with the specified content instead of the voice message.
pub struct InlineQueryResultCachedVoice {
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

// InlineQueryResultCachedAudio Represents a link to an MP3 audio file stored on the Telegram servers. By default, this audio file will be sent by the user. Alternatively, you can use input_message_content to send a message with the specified content instead of the audio.
pub struct InlineQueryResultCachedAudio {
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

// InputTextMessageContent Represents the content of a text message to be sent as the result of an inline query.
pub struct InputTextMessageContent {
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

// InputLocationMessageContent Represents the content of a location message to be sent as the result of an inline query.
pub struct InputLocationMessageContent {
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

// InputVenueMessageContent Represents the content of a venue message to be sent as the result of an inline query.
pub struct InputVenueMessageContent {
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

// InputContactMessageContent Represents the content of a contact message to be sent as the result of an inline query.
pub struct InputContactMessageContent {
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

// InputInvoiceMessageContent Represents the content of an invoice message to be sent as the result of an inline query.
pub struct InputInvoiceMessageContent {
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

// ChosenInlineResult Represents a result of an inline query that was chosen by the user and sent to their chat partner.
pub struct ChosenInlineResult {
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

// SentWebAppMessage Describes an inline message sent by a Web App on behalf of a user.
pub struct SentWebAppMessage {
pub:
	// inline_message_id Optional. Identifier of the sent inline message. Available only if there is an inline keyboard attached to the message.
	inline_message_id string
}

// LabeledPrice This object represents a portion of the price for goods or services.
pub struct LabeledPrice {
pub:
	// label Portion label
	label string
	// amount Price of the product in the smallest units of the currency (integer, not float/double). For example, for a price of US$ 1.45 pass amount = 145. See the exp parameter in currencies.json, it shows the number of digits past the decimal point for each currency (2 for the majority of currencies).
	amount int
}

// Invoice This object contains basic information about an invoice.
pub struct Invoice {
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

// ShippingAddress This object represents a shipping address.
pub struct ShippingAddress {
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

// OrderInfo This object represents information about an order.
pub struct OrderInfo {
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

// ShippingOption This object represents one shipping option.
pub struct ShippingOption {
pub:
	// id Shipping option identifier
	id string
	// title Option title
	title string
	// prices List of price portions
	prices []LabeledPrice
}

// SuccessfulPayment This object contains basic information about a successful payment.
pub struct SuccessfulPayment {
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

// ShippingQuery This object contains information about an incoming shipping query.
pub struct ShippingQuery {
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

// PreCheckoutQuery This object contains information about an incoming pre-checkout query.
pub struct PreCheckoutQuery {
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

// PassportData Describes Telegram Passport data shared with the bot by the user.
pub struct PassportData {
pub:
	// data Array with information about documents and other Telegram Passport elements that was shared with the bot
	data []EncryptedPassportElement
	// credentials Encrypted credentials required to decrypt the data
	credentials EncryptedCredentials
}

// PassportFile This object represents a file uploaded to Telegram Passport. Currently all Telegram Passport files are in JPEG format when decrypted and don't exceed 10MB.
pub struct PassportFile {
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

// EncryptedPassportElement Describes documents or other Telegram Passport elements shared with the bot by the user.
pub struct EncryptedPassportElement {
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

// EncryptedCredentials Describes data required for decrypting and authenticating EncryptedPassportElement. See the Telegram Passport Documentation for a complete description of the data decryption and authentication processes.
pub struct EncryptedCredentials {
pub:
	// data Base64-encoded encrypted JSON-serialized data with unique user's payload, data hashes and secrets required for EncryptedPassportElement decryption and authentication
	data string
	// hash Base64-encoded data hash for data authentication
	hash string
	// secret Base64-encoded secret, encrypted with the bot's public RSA key, required for data decryption
	secret string
}

// PassportElementErrorDataField Represents an issue in one of the data fields that was provided by the user. The error is considered resolved when the field's value changes.
pub struct PassportElementErrorDataField {
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

// PassportElementErrorFrontSide Represents an issue with the front side of a document. The error is considered resolved when the file with the front side of the document changes.
pub struct PassportElementErrorFrontSide {
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

// PassportElementErrorReverseSide Represents an issue with the reverse side of a document. The error is considered resolved when the file with reverse side of the document changes.
pub struct PassportElementErrorReverseSide {
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

// PassportElementErrorSelfie Represents an issue with the selfie with a document. The error is considered resolved when the file with the selfie changes.
pub struct PassportElementErrorSelfie {
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

// PassportElementErrorFile Represents an issue with a document scan. The error is considered resolved when the file with the document scan changes.
pub struct PassportElementErrorFile {
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

// PassportElementErrorFiles Represents an issue with a list of scans. The error is considered resolved when the list of files containing the scans changes.
pub struct PassportElementErrorFiles {
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

// PassportElementErrorTranslationFile Represents an issue with one of the files that constitute the translation of a document. The error is considered resolved when the file changes.
pub struct PassportElementErrorTranslationFile {
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

// PassportElementErrorTranslationFiles Represents an issue with the translated version of a document. The error is considered resolved when a file with the document translation change.
pub struct PassportElementErrorTranslationFiles {
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

// PassportElementErrorUnspecified Represents an issue in an unspecified place. The error is considered resolved when new data is added.
pub struct PassportElementErrorUnspecified {
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

// Game This object represents a game. Use BotFather to create and edit games, their short names will act as unique identifiers.
pub struct Game {
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

// CallbackGame A placeholder, currently holds no information. Use BotFather to set up your game.
pub struct CallbackGame {
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

// GameHighScore This object represents one row of the high scores table for a game.
pub struct GameHighScore {
pub:
	// position Position in high score table for the game
	position int
	// user User
	user User
	// score Score
	score int
}

// KeyboardButtonRequestUser This object defines the criteria used to request a suitable user.
// The identifier of the selected user will be shared with the bot when the corresponding button is pressed.
pub struct KeyboardButtonRequestUser {
pub:
	// request_id Signed 32-bit identifier of the request, which will be received back in the UserShared object. Must be unique within the message
	request_id int
	// user_is_bot Optional. Pass True to request a bot, pass False to request a regular user. If not specified, no additional restrictions are applied.
	user_is_bot bool
	// user_is_premium Optional. Pass True to request a premium user, pass False to request a non-premium user. If not specified, no additional restrictions are applied.
	user_is_premium bool
}

// KeyboardButtonRequestChat This object defines the criteria used to request a suitable chat.
// The identifier of the selected chat will be shared with the bot when the corresponding button is pressed.
pub struct KeyboardButtonRequestChat {
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

// UserShared This object contains information about the user whose identifier was shared with the bot using a KeyboardButtonRequestUser button.
pub struct UserShared {
pub:
	// request_id Identifier of the request
	request_id int
	// user_id Identifier of the shared user. This number may have more than 32 significant bits and some programming languages may have difficulty/silent defects in interpreting it. But it has at most 52 significant bits, so a 64-bit integer or double-precision float type are safe for storing this identifier. The bot may not have access to the user and could be unable to use this identifier, unless the user is already known to the bot by some other means.
	user_id i64
}

// ChatShared This object contains information about the chat whose identifier was shared with the bot using a KeyboardButtonRequestChat button.
pub struct ChatShared {
pub:
	// request_id Identifier of the request
	request_id int
	// chat_id Identifier of the shared user. This number may have more than 32 significant bits and some programming languages may have difficulty/silent defects in interpreting it. But it has at most 52 significant bits, so a 64-bit integer or double-precision float type are safe for storing this identifier. The bot may not have access to the chat and could be unable to use this identifier, unless the chat is already known to the bot by some other means.
	chat_id i64
}

// BotName This object represents the bot's name.
pub struct BotName {
pub:
	// name The bot's name
	name string
}

// BotDescription This object represents the bot's description.
pub struct BotDescription {
pub:
	// description	The bot's description
	description string
}

// BotShortDescription This object represents the bot's short description.
pub struct BotShortDescription {
pub:
	// description	The bot's short description
	short_description string
}

// InputSticker This object describes a sticker to be added to a sticker set.
pub struct InputSticker {
pub:
	// sticker The added sticker. Pass a file_id as a String to send a file that already exists on the Telegram servers, pass an HTTP URL as a String for Telegram to get a file from the Internet, or upload a new one using multipart/form-data. Animated and video stickers can't be uploaded via HTTP URL. More information on Sending Files »
	sticker string
	// emoji_list List of 1-20 emoji associated with the sticker
	emoji_list []string
	// mask_position Optional. Position where the mask should be placed on faces. For “mask” stickers only.
	mask_position MaskPosition
	// keywords Optional. List of 0-20 search keywords for the sticker with total length of up to 64 characters. For “regular” and “custom_emoji” stickers only.
	keywords []string
}

// type ChatMember = ChatMemberOwner | ChatMemberAdministrator | ChatMemberMember | ChatMemberRestricted | ChatMemberLeft | ChatMemberBanned

type BotCommandScope = BotCommandScopeAllChatAdministrators
	| BotCommandScopeAllGroupChats
	| BotCommandScopeAllPrivateChats
	| BotCommandScopeChat
	| BotCommandScopeChatAdministrators
	| BotCommandScopeChatMember
	| BotCommandScopeDefault
type MenuButton = MenuButtonCommands | MenuButtonDefault | MenuButtonWebApp
type InlineQueryResult = InlineQueryResultArticle
	| InlineQueryResultAudio
	| InlineQueryResultCachedAudio
	| InlineQueryResultCachedDocument
	| InlineQueryResultCachedGif
	| InlineQueryResultCachedMpeg4Gif
	| InlineQueryResultCachedPhoto
	| InlineQueryResultCachedSticker
	| InlineQueryResultCachedVideo
	| InlineQueryResultCachedVoice
	| InlineQueryResultContact
	| InlineQueryResultDocument
	| InlineQueryResultGame
	| InlineQueryResultGif
	| InlineQueryResultLocation
	| InlineQueryResultMpeg4Gif
	| InlineQueryResultPhoto
	| InlineQueryResultVenue
	| InlineQueryResultVideo
	| InlineQueryResultVoice
type InputMessageContent = InputContactMessageContent
	| InputInvoiceMessageContent
	| InputLocationMessageContent
	| InputTextMessageContent
	| InputVenueMessageContent
type PassportElementError = PassportElementErrorDataField
	| PassportElementErrorFile
	| PassportElementErrorFiles
	| PassportElementErrorFrontSide
	| PassportElementErrorReverseSide
	| PassportElementErrorSelfie
	| PassportElementErrorTranslationFile
	| PassportElementErrorTranslationFiles
	| PassportElementErrorUnspecified
type ReplyMarkup = ForceReply | InlineKeyboardMarkup | ReplyKeyboardMarkup | ReplyKeyboardRemove

