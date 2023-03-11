module media

import net.http

pub fn send_media[T, R, N](mut app N, method string, params T, umedia R) !string{
	mut files_to_send := map[string][]http.FileData{} 
	$for field in R.fields {
		$if field.name == 'key_name' {
			files_to_send = prepare_files(umedia.key_name, [umedia.path]) or {
				return error('${umedia.key_name}: ${err}')
			}
		}
	}
	return app.api_multipart_form_request(method, params, files_to_send)!
}
