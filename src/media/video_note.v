module media

import vtelegram { return_data, Message, SendVideoNote }

pub struct VideoNoteUpload{
pub:
	key_name string = 'video_note'
pub mut:
	path string
}

// new_video_note only for single video note uploading and sending
pub fn new_video_note(path string) VideoNoteUpload {
	return VideoNoteUpload{
		path:path
	}
}

// send sends a single video note
pub fn (d VideoNoteUpload) send[T](mut app T, params SendVideoNote) !Message {
	resp := send_media(mut app, 'sendVideoNote', params, d) or{
		return error('VideoNote not sent: ${err}')
	}
	return return_data[Message](resp)
}
