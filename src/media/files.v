module media

import net.http
import net.http.mime
import os

fn prepare_files(key_name string, f_paths []string) !map[string][]http.FileData{
	mut files := map[string][]http.FileData{}
	for path in f_paths {
		files[key_name] << prepare_file(path)!
	}
	return files
} 

fn prepare_file(path string) !http.FileData {
	file_name := os.file_name(path)
	mut file := os.read_file(path) !
	mime_type := mime.get_mime_type(file_name.all_after('.'))
	return http.FileData{
		filename: file_name
		content_type: mime_type
		data: file
	}
}
