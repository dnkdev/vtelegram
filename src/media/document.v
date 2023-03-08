module media

import vtelegram { prepare_files, return_data, Message, SendDocument }

pub struct DocumentUpload{
pub mut:
	key_name string = 'document'
	path string
}

pub fn new_document() DocumentUpload {
	return DocumentUpload{}
}

pub fn (mut d DocumentUpload) upload(path string) !{
	if d.path != '' {
		println('Failed to upload ${path}')
		return error('Document already uploaded, use sendMediaGroup method for sending a few documents')
	}
	d.path = path
}

pub fn (mut d DocumentUpload) send[T](mut app T, params SendDocument) !Message {
	resp := app.api_multipart_form_request('sendDocument', params, d) or{
		app.log.error('Document not sent: ${err}')
		return error('Document not sent: ${err}')
	}
	return return_data[Message](resp)
}

// pub fn (mut b Bot) send_document_(params SendDocument) !Message {
//     mut file := new_document()
// 	file.upload('./document.txt')!
// 	file.upload('./doc2.txt')!
// 	println('send func call')
// 	resp := b.api_multipart_form_request('sendDocument', params, file) or{//json.encode(new_params)) or {
// 		println('$err')
// 		println('Error')
// 		exit(1)
// 	}
//     // '
// 	println('${resp}')
// 	return return_data[Message](resp)
// }
