module media

// import vtelegram { InputMedia }
// import net.http
// import json
// import os


// pub fn new_media_group() []InputMedia{
// 	return []InputMedia{}
// }

// pub fn new_media(media InputMedia) InputMedia {
// 	return media
// }

// // add InputMedia to array of InputMedia
// pub fn (mut media []InputMedia) add(a_media InputMedia){
// 	media << a_media
// }

// // send is a shortcut for function (mut b Bot) send_media_group(params SendMediaGroup) 
// pub fn (mut media []InputMedia) send[T](mut app T, params SendMediaGroup)!{
// 	println('send func call')
// 	mut new_params := params
// 	new_params.media = media
	
// 	//app.send_media_group(new_params)!
// 	resp := app.http_multipart_form_request('sendMediaGroup', new_params) or{//json.encode(new_params)) or {
// 		println('$err')
// 		println('Error')
// 		exit(1)
// 	}
//     // '
//     data := return_data[[]Message](resp)
// 	prepare_media('./document.txt')
// 	println(resp)

// }

