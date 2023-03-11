module media

// import vtelegram { prepare_files, return_data, Message, SendMediaGroup, InputMedia }

// pub struct MediaGroupUpload{
// 	key_name string = 'media'
// mut:
// 	media []InputMedia
// 	path string
// }

// pub fn new_media() MediaGroupUpload {
// 	return MediaGroupUpload{}
// }

// pub fn (mut d MediaGroupUpload) upload(path string) !{
// 	if d.path != '' {
// 		println('Failed to upload ${path}')
// 		return error('Failed to upload ${path}')
// 	}
// 	media := InputMedia
// 	d.media << media
// }

// pub fn (mut d MediaGroupUpload) send[T](mut app T, params SendMediaGroup) !Message {
// 	resp := app.api_multipart_form_request('sendMediaGroup', params, d) or{
// 		app.log.error('MediaGroup not sent: ${err}')
// 		return error('MediaGroup not sent: ${err}')
// 	}
// 	return return_data[Message](resp)
// }
