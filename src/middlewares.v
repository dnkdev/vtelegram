module vtelegram

fn is_middleware_relate_to_type(mut update Update, attrs []string) bool {
	for handler in handler_types {
		if attrs.any(it.contains(handler)) {
			if validate_handler_type(update, handler) {
				return true
			} else {
				// passing = false
				continue
			}
		}
	}
	return false
}

fn is_middleware_pass_filters(mut update Update, attrs []string) bool {
	for attr in attrs {
		a := attr.split(':')
		if a.len < 2 {
			continue
		}
		sub := a[0].trim_space()
		value := a.last().trim_space()

		// context filters
		if sub == 'context' {
			if !validate_filter(update, value) {
				return false
			}
		}
	}
	return true
}

fn aggregate_middlewares[T](mut middleware T, mut update Update) bool {
	$for method in T.methods {
		if method.attrs.len > 0 {
			$if method.args[0].typ is Update {
				if is_middleware_relate_to_type(mut update, method.attrs) {
					if is_middleware_pass_filters(mut update, method.attrs) {
						res := middleware.$method(mut update)
						if res.str() == 'false' {
							return false
						}
					}
				}
			}
		}
	}
	return true
}
