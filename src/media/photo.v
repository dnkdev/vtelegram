module media

import vtelegram { return_data, Message, SendPhoto }

pub struct PhotoUpload{
	key_name string = 'photo'
mut:
	path string
}

pub fn new_photo(path string) PhotoUpload {
	return PhotoUpload{
		path:path
	}
}

pub fn (d PhotoUpload) send[T](mut app T, params SendPhoto) !Message {
	resp := app.api_multipart_form_request('sendPhoto', params, d) or{
		app.log.error('Photo not sent: ${err}')
		return error('Photo not sent: ${err}')
	}
	return return_data[Message](resp)
}
