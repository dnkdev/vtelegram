module vtelegram

import time

pub struct Result {
pub:
	update Update
pub mut:
	data map[string]string
}

fn handle_update[T, N](mut app T, mut middleware N, update Update) {
	mut update_new := update

	// middleware
	$if N !is Regular {
		if !aggregate_middlewares(mut middleware, mut update_new) {
			return
		}
	}

	result := Result{
		update: update_new
		data: get_middleware_data(&middleware)
	}
	$for method in T.methods {
		if method.attrs.len > 0 {
			$if method.args[0].typ is Result {
				if is_handler_relate_to_type(update_new, method.attrs) {
					if is_handler_pass_filters(update_new, method.attrs) {
						app.$method(result) or {
							eprintln('${time.now()} Error # ${method.name}: ${err}')
						}
					}
				}
			}
		}
	}
}
