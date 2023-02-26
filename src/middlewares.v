module vtelegram

// get_middleware_data == middleware.data
pub fn get_middleware_data[T](middleware &T) map[string]string {
	$for field in T.fields{
		if field.name == 'data'{
			return middleware.data
		}
	}
	return map[string]string{}
}

// delete_middleware_data delete one key from data
pub fn delete_middleware_data[T](mut middleware &T, key string){
	middleware.data.delete(key)
}

// free_middleware_data function for data manual delete, if stash_data == false (default) then this function is called every update handling circle 
pub fn clear_middleware_data[T](mut middleware &T){
	middleware.data.clear()
	// $for field in T.fields{
	// 	if field.name == 'stash_data'{
	// 		if middleware.stash_data{
	// 			return
	// 		}
	// 		//middleware.data.clear()
	// 		for k, _ in middleware.data {
	// 			unsafe {
	// 				middleware.data.delete(k)
	// 			}
	// 		}
	// 	}
	// }
}

fn is_middleware_relate_to_type(mut update Update, attrs []string) bool {
	for handler in handler_types {
		if attrs.any(it.contains(handler)){
			if validate_handler_type(update, handler){
				return true
			}
			else {
				//passing = false
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

fn aggregate_middlewares[T](mut middleware T, mut update Update) bool{
	$for method in T.methods {
		if method.attrs.len > 0 {

			if is_middleware_relate_to_type(mut update,method.attrs){
				if is_middleware_pass_filters(mut update, method.attrs){
					res := middleware.$method(mut update)
					if res.str() == 'false'{
						return false
					}
				}
			}

		}
	}
	return true
}