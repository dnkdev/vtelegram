module media

import vtelegram { prepare_files, return_data, Message, SendVideoNote }

pub struct VideoNoteUpload{
	key_name string = 'video_note'
mut:
	path string
}

pub fn new_video_note() VideoNoteUpload {
	return VideoNoteUpload{}
}

pub fn (mut d VideoNoteUpload) upload(path string) !{
	if d.path != '' {
		println('Failed to upload ${path}')
		return error('VideoNote already uploaded, use sendMediaGroup method for sending a few video_notes')
	}
	d.path = path
}

pub fn (mut d VideoNoteUpload) send[T](mut app T, params SendVideoNote) !Message {
	resp := app.api_multipart_form_request('sendVideoNote', params, d) or{
		app.log.error('VideoNote not sent: ${err}')
		return error('VideoNote not sent: ${err}')
	}
	return return_data[Message](resp)
}
