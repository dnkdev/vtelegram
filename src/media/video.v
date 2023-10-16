module media

import vtelegram { return_data, Message, SendVideo }

pub struct VideoUpload{
pub:
	key_name string = 'video'
pub mut:
	path string
}

// new_video only for single video uploading and sending
pub fn new_video(path string) VideoUpload {
	return VideoUpload{
		path:path
	}
}

// send sends single video
pub fn (d VideoUpload) send[T](mut app T, params SendVideo) !Message {
	resp := send_media(mut app, 'sendVideo', params, d) or{
		return error('Video not sent: ${err}')
	}
	return return_data[Message](resp)
}
