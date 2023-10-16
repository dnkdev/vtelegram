module media

import vtelegram { return_data, Message, SendVoice }

pub struct VoiceUpload{
pub:
	key_name string = 'voice'
pub mut:
	path string
}

// new_voice only for single voice uploading and sending
pub fn new_voice(path string) VoiceUpload {
	return VoiceUpload{
		path:path
	}
}

// send sends single voice
pub fn (d VoiceUpload) send[T](mut app T, params SendVoice) !Message {
	resp := send_media(mut app, 'sendVoice', params, d) or{
		return error('Voice not sent: ${err}')
	}
	return return_data[Message](resp)
}
