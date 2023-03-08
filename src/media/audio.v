module media

import vtelegram { prepare_files, return_data, Message, SendAudio }

pub struct AudioUpload{
	key_name string = 'audio'
mut:
	path string
}

pub fn new_audio() AudioUpload {
	return AudioUpload{}
}

pub fn (mut d AudioUpload) upload(path string) !{
	if d.path != '' {
		println('Failed to upload ${path}')
		return error('Audio already uploaded, use sendMediaGroup method for sending a few audios')
	}
	d.path = path
}

pub fn (mut d AudioUpload) send[T](mut app T, params SendAudio) !Message {
	resp := app.api_multipart_form_request('sendAudio', params, d) or{
		app.log.error('Audio not sent: ${err}')
		return error('Audio not sent: ${err}')
	}
	return return_data[Message](resp)
}
