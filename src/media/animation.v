module media

import vtelegram { return_data, Message, SendAnimation }

pub struct AnimationUpload{
	key_name string = 'animation'
mut:
	path string
}

pub fn new_animation(path string) AnimationUpload {
	return AnimationUpload{
		path: path
	}
}

pub fn (d AnimationUpload) send[T](mut app T, params SendAnimation) !Message {
	resp := app.api_multipart_form_request('sendAnimation', params, d) or{
		app.log.error('Animation not sent: ${err}')
		return error('Animation not sent: ${err}')
	}
	return return_data[Message](resp)
}
