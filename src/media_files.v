module vtelegram

import net.http
import net.http.mime
import os

type InputFileOrStringType = InputFile | string

// InputFile This object represents the contents of a file to be uploaded. Must be posted using multipart/form-data in the usual way that files are uploaded via the browser.
pub struct InputFile {
pub:
	file_name    string
	file_content string
}

// InputFile.new - for thumbnail and single file uploading and sending with `send_document`, `send_photo`, `send_voice`, `send_video`, `send_video_note`, `send_animation`
[inline]
pub fn InputFile.new(path string) !InputFile {
	return InputFile{
		file_name: os.file_name(path)
		file_content: os.read_file(path)!
	}
}

fn prepare_files(inputs []InputFile) map[string][]http.FileData {
	mut files := map[string][]http.FileData{}
	for input in inputs {
		files[input.file_name] << prepare_file(input)
	}
	return files
}

fn prepare_file(input InputFile) http.FileData {
	mime_type := mime.get_mime_type(input.file_name.all_after_last('.'))
	return http.FileData{
		filename: input.file_name
		content_type: mime_type
		data: input.file_content
	}
}
