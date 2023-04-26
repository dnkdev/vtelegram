module vtelegram

pub struct Result {
pub:
	update Update
pub mut:
	data map[string]string
}

fn handle_update[T](app T, update Update) {
	mut update_new := update
	// middlewares
	// $if N !is Regular {
	// 	if !aggregate_middlewares(mut middleware, mut update_new) {
	// 		return
	// 	}
	// }
	result := Result{
		update: update_new
		data: map[string]string{}//get_middleware_data(&middleware)
	}
	$for method in T.methods {

		if method.attrs.len > 0 {
		
			if is_handler_relate_to_type(update_new, method.attrs) {
				if is_handler_pass_filters(update_new, method.attrs) {
					app.$method(result)
				}
			}

		}
	}
}
