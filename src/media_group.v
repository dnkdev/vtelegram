module vtelegram

pub type InputMedia = InputMediaAnimation
	| InputMediaAudio
	| InputMediaDocument
	| InputMediaPhoto
	| InputMediaVideo

// InputMediaPhoto Represents a photo to be sent.
[params]
pub struct InputMediaPhoto {
pub mut:
	// type Type of the result, must be photo
	@type string
	// media File to send. Pass a file_id to send a file that exists on the Telegram servers (recommended), pass an HTTP URL for Telegram to get a file from the Internet, or pass “attach://<file_attach_name>” to upload a new one using multipart/form-data under <file_attach_name> name. More information on Sending Files »
	media InputFileOrStringType
	// caption Optional. Caption of the photo to be sent, 0-1024 characters after entities parsing
	caption string
	// parse_mode Optional. Mode for parsing entities in the photo caption. See formatting options for more details.
	parse_mode string
	// caption_entities Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
	caption_entities []MessageEntity
	// has_spoiler Optional. Pass True if the photo needs to be covered with a spoiler animation
	has_spoiler bool
}

// InputMediaVideo Represents a video to be sent.
[params]
pub struct InputMediaVideo {
pub mut:
	// type Type of the result, must be video
	@type string
	// media File to send. Pass a file_id to send a file that exists on the Telegram servers (recommended), pass an HTTP URL for Telegram to get a file from the Internet, or pass “attach://<file_attach_name>” to upload a new one using multipart/form-data under <file_attach_name> name. More information on Sending Files »
	media InputFileOrStringType
	// thumbnail Optional. Thumbnail of the file sent; can be ignored if thumbnail generation for the file is supported server-side. The thumbnail should be in JPEG format and less than 200 kB in size. A thumbnail's width and height should not exceed 320. Ignored if the file is not uploaded using multipart/form-data.
	// Thumbnails can't be reused and can be only uploaded as a new file, so you can pass “attach://<file_attach_name>” if the thumbnail was uploaded using multipart/form-data under <file_attach_name>. More information on Sending Files »
	thumbnail InputFileOrStringType
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

// InputMediaAnimation Represents an animation file (GIF or H.264/MPEG-4 AVC video without sound) to be sent.
[params]
pub struct InputMediaAnimation {
pub mut:
	// type Type of the result, must be animation
	@type string
	// media File to send. Pass a file_id to send a file that exists on the Telegram servers (recommended), pass an HTTP URL for Telegram to get a file from the Internet, or pass “attach://<file_attach_name>” to upload a new one using multipart/form-data under <file_attach_name> name. More information on Sending Files »
	media InputFileOrStringType
	// thumbnail Optional. Thumbnail of the file sent; can be ignored if thumbnail generation for the file is supported server-side. The thumbnail should be in JPEG format and less than 200 kB in size.
	// A thumbnail's width and height should not exceed 320. Ignored if the file is not uploaded using multipart/form-data. Thumbnails can't be reused and can be only uploaded as a new file, so you can pass “attach://<file_attach_name>” if the thumbnail was uploaded using multipart/form-data under <file_attach_name>. More information on Sending Files »
	thumbnail InputFileOrStringType
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

// InputMediaAudio Represents an audio file to be treated as music to be sent.
[params]
pub struct InputMediaAudio {
pub mut:
	// type Type of the result, must be audio
	@type string
	// media File to send. Pass a file_id to send a file that exists on the Telegram servers (recommended), pass an HTTP URL for Telegram to get a file from the Internet, or pass “attach://<file_attach_name>” to upload a new one using multipart/form-data under <file_attach_name> name. More information on Sending Files »
	media InputFileOrStringType
	// thumbnail Optional. Thumbnail of the file sent; can be ignored if thumbnail generation for the file is supported server-side. The thumbnail should be in JPEG format and less than 200 kB in size. A thumbnail's width and height should not exceed 320. Ignored if the file is not uploaded using multipart/form-data.
	// Thumbnails can't be reused and can be only uploaded as a new file, so you can pass “attach://<file_attach_name>” if the thumbnail was uploaded using multipart/form-data under <file_attach_name>. More information on Sending Files »
	thumbnail InputFileOrStringType
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

// InputMediaDocument Represents a general file to be sent.
[params]
pub struct InputMediaDocument {
pub mut:
	// type Type of the result, must be document
	@type string
	// media File to send. Pass a file_id to send a file that exists on the Telegram servers (recommended), pass an HTTP URL for Telegram to get a file from the Internet, or pass “attach://<file_attach_name>” to upload a new one using multipart/form-data under <file_attach_name> name. More information on Sending Files »
	media InputFileOrStringType
	// thumbnail Optional. Thumbnail of the file sent; can be ignored if thumbnail generation for the file is supported server-side. The thumbnail should be in JPEG format and less than 200 kB in size. A thumbnail's width and height should not exceed 320. Ignored if the file is not uploaded using multipart/form-data.
	// Thumbnails can't be reused and can be only uploaded as a new file, so you can pass “attach://<file_attach_name>” if the thumbnail was uploaded using multipart/form-data under <file_attach_name>. More information on Sending Files »
	thumbnail InputFileOrStringType
	// caption Optional. Caption of the document to be sent, 0-1024 characters after entities parsing
	caption string
	// parse_mode Optional. Mode for parsing entities in the document caption. See formatting options for more details.
	parse_mode string
	// caption_entities Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
	caption_entities []MessageEntity
	// disable_content_type_detection Optional. Disables automatic server-side content type detection for files uploaded using multipart/form-data. Always True, if the document is sent as part of an album.
	disable_content_type_detection bool
}

[inline]
pub fn InputMediaAnimation.new(input InputMediaAnimation) InputMediaAnimation {
	return input
}

[inline]
pub fn InputMediaAudio.new(input InputMediaAudio) InputMediaAudio {
	return input
}

[inline]
pub fn InputMediaPhoto.new(input InputMediaPhoto) InputMediaPhoto {
	return input
}

[inline]
pub fn InputMediaVideo.new(input InputMediaVideo) InputMediaVideo {
	return input
}

[inline]
pub fn InputMediaDocument.new(input InputMediaDocument) InputMediaDocument {
	return input
}

// new_media_group create media group of type you want (media group can be 1 type only). 
// `vtelegram.new_media_group[vtelegram.InputMediaDocument]()`
[inline]
pub fn new_media_group[T]() []T {
	return []T{}
}

pub fn (mut group []InputMediaDocument) add(input InputMediaDocument) {
	mut a := input
	a.@type = 'document'
	if a.thumbnail !is InputFile {
		a.thumbnail = '' as string
	}
	group << a
}
pub fn (mut group []InputMediaAnimation) add(input InputMediaAnimation) {
	mut a := input
	a.@type = 'animation'
	group << a
}
pub fn (mut group []InputMediaAudio) add(input InputMediaAudio) {
	mut a := input
	a.@type = 'audio'
	group << a
}
pub fn (mut group []InputMediaPhoto) add(input InputMediaPhoto) {
	mut a := input
	a.@type = 'photo'
	group << a
}
pub fn (mut group []InputMediaVideo) add(input InputMediaVideo) {
	mut a := input
	a.@type = 'video'
	group << a
}
