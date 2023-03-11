module media

import vtelegram { return_data, Message, SendVideoNote }

pub struct VideoNoteUpload{
	key_name string = 'video_note'
mut:
	path string
}

pub fn new_video_note(path string) VideoNoteUpload {
	return VideoNoteUpload{
		path:path
	}
}

pub fn (d VideoNoteUpload) send[T](mut app T, params SendVideoNote) !Message {
	resp := app.api_multipart_form_request('sendVideoNote', params, d) or{
		app.log.error('VideoNote not sent: ${err}')
		return error('VideoNote not sent: ${err}')
	}
	return return_data[Message](resp)
}
