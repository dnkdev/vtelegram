module media

import vtelegram { prepare_files, return_data, Message, SendVoice }

pub struct VoiceUpload{
	key_name string = 'voice'
mut:
	path string
}

pub fn new_voice(path string) VoiceUpload {
	return VoiceUpload{
		path:path
	}
}

pub fn (d VoiceUpload) send[T](mut app T, params SendVoice) !Message {
	resp := app.api_multipart_form_request('sendVoice', params, d) or{
		app.log.error('Voice not sent: ${err}')
		return error('Voice not sent: ${err}')
	}
	return return_data[Message](resp)
}
