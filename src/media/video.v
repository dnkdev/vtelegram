module media

import vtelegram { prepare_files, return_data, Message, SendVideo }

pub struct VideoUpload{
	key_name string = 'video'
mut:
	path string
}

pub fn new_video() VideoUpload {
	return VideoUpload{}
}

pub fn (mut d VideoUpload) upload(path string) !{
	if d.path != '' {
		println('Failed to upload ${path}')
		return error('Video already uploaded, use sendMediaGroup method for sending a few videos')
	}
	d.path = path
}

pub fn (mut d VideoUpload) send[T](mut app T, params SendVideo) !Message {
	resp := app.api_multipart_form_request('sendVideo', params, d) or{
		app.log.error('Video not sent: ${err}')
		return error('Video not sent: ${err}')
	}
	return return_data[Message](resp)
}
