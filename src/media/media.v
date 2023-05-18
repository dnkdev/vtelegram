module media

import net.http
import json

// send_media inner function for sending single files
fn send_media[T, R, N](mut app T, method string, params R, umedia N) !string{
	mut files_to_send := map[string][]http.FileData{}
	$for field in N.fields {
		$if field.name == 'key_name' {
			files_to_send = prepare_files(umedia.key_name, [umedia.path]) or {
				return error('${umedia.key_name}: ${err}')
			}
		}
	}
	mut data := map[string]string{}
	$for field in R.fields {
		data[field.name] =  params.$(field.name).str()
		$if field.name == 'reply_markup'{
			data['reply_markup'] = json.encode(params.$(field.name))
		}

	}
	return app.api_multipart_form_request(method, data, files_to_send) or {
		return err
	}
}
