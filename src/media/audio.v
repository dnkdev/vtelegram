module media

import vtelegram { return_data, Message, SendAudio }

pub struct AudioUpload{
pub:
	key_name string = 'audio'
pub mut:
	path string
}

// new_audio only for single audio uploading and sending
pub fn new_audio(path string) AudioUpload {
	return AudioUpload{
		path:path
	}
}

// send sends single audio
pub fn (d AudioUpload) send[T](mut app T, params SendAudio) !Message {
	resp := send_media(mut app, 'sendAudio', params, d) or{
		return error('Audio not sent: ${err}')
	}
	return return_data[Message](resp)
}
