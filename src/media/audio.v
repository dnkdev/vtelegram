module media

import vtelegram { return_data, Message, SendAudio }

pub struct AudioUpload{
pub:
	key_name string = 'audio'
pub mut:
	path string
}

pub fn new_audio(path string) AudioUpload {
	return AudioUpload{
		path:path
	}
}

pub fn (d AudioUpload) send[T](mut app T, params SendAudio) !Message {
	resp := send_media(mut app, 'sendAudio', params, d) or{
		app.log.error('Audio not sent: ${err}')
		return error('Audio not sent: ${err}')
	}
	return return_data[Message](resp)
}
