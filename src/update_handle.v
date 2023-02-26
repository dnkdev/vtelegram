module vtelegram

pub struct Result {
pub:
	update Update
pub mut:
	data map[string]string
}

fn handle_update[T, R](app T, mut middleware R, update Update) {
	mut update_new := update
	// middlewares
	if R.name != 'vtelegram.Regular' {
		if !aggregate_middlewares(mut middleware, mut update_new) {
			return
		}
	}
	// filters -> handlers after middleware
	result := Result{
		update: update_new
		data: get_middleware_data(&middleware)
	}
	$for method in T.methods {

		if method.attrs.len > 0 {
		
			if is_method_relate_to_type(update_new, method.attrs) {
				if is_handler_pass_filters(update_new, method.attrs) {
					app.$method(result)
				}
			}

		}
	}
}
