module media

import vtelegram { prepare_files, return_data, Message, SendAnimation }

pub struct AnimationUpload{
	key_name string = 'animation'
mut:
	path string
}

pub fn new_animation() AnimationUpload {
	return AnimationUpload{}
}

pub fn (mut d AnimationUpload) upload(path string) !{
	if d.path != '' {
		println('Failed to upload ${path}')
		return error('Animation already uploaded, use sendMediaGroup method for sending a few animations')
	}
	d.path = path
}

pub fn (mut d AnimationUpload) send[T](mut app T, params SendAnimation) !Message {
	resp := app.api_multipart_form_request('sendAnimation', params, d) or{
		app.log.error('Animation not sent: ${err}')
		return error('Animation not sent: ${err}')
	}
	return return_data[Message](resp)
}
