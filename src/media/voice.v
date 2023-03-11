module media

import vtelegram { return_data, Message, SendVoice }

pub struct VoiceUpload{
pub:
	key_name string = 'voice'
pub mut:
	path string
}

pub fn new_voice(path string) VoiceUpload {
	return VoiceUpload{
		path:path
	}
}

pub fn (d VoiceUpload) send[T](mut app T, params SendVoice) !Message {
	resp := send_media(mut app, 'sendVoice', params, d) or{
		app.log.error('Voice not sent: ${err}')
		return error('Voice not sent: ${err}')
	}
	return return_data[Message](resp)
}
