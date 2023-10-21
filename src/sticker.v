module vtelegram

type FileOrStringType = File | string

// InputSticker This object describes a sticker to be added to a sticker set.
[params]
pub struct InputSticker {
pub mut:
	// sticker The added sticker. Pass a file_id as a String to send a file that already exists on the Telegram servers, pass an HTTP URL as a String for Telegram to get a file from the Internet, or upload a new one using multipart/form-data. Animated and video stickers can't be uploaded via HTTP URL. More information on Sending Files »
	sticker InputFileOrStringType
	// emoji_list List of 1-20 emoji associated with the sticker
	emoji_list []string
	// mask_position Optional. Position where the mask should be placed on faces. For “mask” stickers only.
	mask_position MaskPosition [omitempty]
	// keywords Optional. List of 0-20 search keywords for the sticker with total length of up to 64 characters. For “regular” and “custom_emoji” stickers only.
	keywords []string [omitempty]
}

[inline]
pub fn InputSticker.new(params InputSticker) InputSticker{
	return params
}

// pub fn InputSticker.new(path string) !InputSticker {
// 	return InputSticker {
// 		sticker: InputFile.new(path)
// 	}
// }

