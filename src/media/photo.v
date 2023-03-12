module media

import vtelegram { return_data, Message, SendPhoto }

pub struct PhotoUpload{
pub:
	key_name string = 'photo'
pub mut:
	path string
}

// new_photo only for single photo uploading and sending
pub fn new_photo(path string) PhotoUpload {
	return PhotoUpload{
		path:path
	}
}

// send sends single photo
pub fn (d PhotoUpload) send[T](mut app T, params SendPhoto) !Message {
	resp := send_media(mut app, 'sendPhoto', params, d) or{
		app.log.error('Photo not sent: ${err}')
		return error('Photo not sent: ${err}')
	}
	return return_data[Message](resp)
}
