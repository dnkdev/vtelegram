module media

import vtelegram { prepare_files, return_data, Message, SendVideo }

pub struct VideoUpload{
	key_name string = 'video'
mut:
	path string
}

pub fn new_video(path string) VideoUpload {
	return VideoUpload{
		path:path
	}
}

pub fn (d VideoUpload) send[T](mut app T, params SendVideo) !Message {
	resp := app.api_multipart_form_request('sendVideo', params, d) or{
		app.log.error('Video not sent: ${err}')
		return error('Video not sent: ${err}')
	}
	return return_data[Message](resp)
}
