module media

import vtelegram { return_data, Message, SendAnimation }

pub struct AnimationUpload{
pub:
	key_name string = 'animation'
pub mut:
	path string
}

// new_animation only for single animation uploading and sending
pub fn new_animation(path string) AnimationUpload {
	return AnimationUpload{
		path: path
	}
}

// send sends single animation
pub fn (d AnimationUpload) send[T](mut app T, params SendAnimation) !Message {
	resp := send_media(mut app, 'sendAnimation', params, d) or{
		app.log.error('Animation not sent: ${err}')
		return error('Animation not sent: ${err}')
	}
	return return_data[Message](resp)
}
