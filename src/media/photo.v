module media

import vtelegram { prepare_files, return_data, Message, SendPhoto }

pub struct PhotoUpload{
	key_name string = 'photo'
mut:
	path string
}

pub fn new_photo() PhotoUpload {
	return PhotoUpload{}
}

pub fn (mut d PhotoUpload) upload(path string) !{
	if d.path != '' {
		println('Failed to upload ${path}')
		return error('Photo already uploaded, use sendMediaGroup method for sending a few photos')
	}
	d.path = path
}

pub fn (mut d PhotoUpload) send[T](mut app T, params SendPhoto) !Message {
	resp := app.api_multipart_form_request('sendPhoto', params, d) or{
		app.log.error('Photo not sent: ${err}')
		return error('Photo not sent: ${err}')
	}
	return return_data[Message](resp)
}
