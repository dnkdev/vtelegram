module media

import json
import net.http
import os
import vtelegram { 
	return_data, 
	Message, 
	SendMediaGroup, 
	InputMedia, 
	InputMediaAnimation,
	InputMediaDocument,
	InputMediaPhoto,
	InputMediaAudio,
	InputMediaVideo
}

pub struct MediaGroupUpload{
mut:
	media []InputMedia
	paths []string
}

// send only uploaded files, for passing URL or file_id need create a straight request with bot.send_media_group
pub fn (mut group MediaGroupUpload) send[T](mut app T, params SendMediaGroup) !string {
	mut files_to_send :=  map[string][]http.FileData{}
	mut new_params := params
	new_params.media = group.media
	for i, m in group.media {
		//if m.media.starts_with('attach:') {
		mut files := prepare_files('${os.file_name(group.paths[i])}-${i}', [group.paths[i]]) or {
			return error('attach ${m.@type}: ${err}')
		}
		for k,_ in files {
			files_to_send[k] << files[k]
		}
		//}
	}
	mut data := map[string]string{}
	$for field in SendMediaGroup.fields {
		data[field.name] =  new_params.$(field.name).str() 
		$if field.name == 'media' {
			data['media'] = json.encode(new_params.media)
		}
	}
	return app.api_multipart_form_request('sendMediaGroup', data, files_to_send)!
}

pub fn (mut group MediaGroupUpload) add_document(path string, _doc InputMediaDocument) {
	mut doc := _doc
	file_name := os.file_name(path)
	doc.@type = 'document'
	//if doc.media == '' {
	doc.media = 'attach://${file_name}-${group.media.len}'
	//}
	group.media << doc
	group.paths << path
}

pub fn (mut group MediaGroupUpload) add_photo(path string, _photo InputMediaPhoto) {
	mut photo := _photo
	file_name := os.file_name(path)
	photo.@type = 'photo'
	if photo.media == '' {
		photo.media = 'attach://${file_name}-${group.media.len}'
	}
	group.media << photo
	group.paths << path
}

pub fn (mut group MediaGroupUpload) add_video(path string, _video InputMediaVideo) {
	mut video := _video
	file_name := os.file_name(path)
	video.@type = 'video'
	if video.media == '' {
		video.media = 'attach://${file_name}-${group.media.len}'
	}
	group.media << video
	group.paths << path
}

pub fn (mut group MediaGroupUpload) add_animation(path string, _anim InputMediaAnimation) {
	
	mut anim := _anim
	file_name := os.file_name(path)
	anim.@type = 'animation'
	if anim.media == '' {
		anim.media = 'attach://${file_name}-${group.media.len}'
	}
	group.media << anim
	group.paths << path
}

pub fn (mut group MediaGroupUpload) add_audio(path string, _audio InputMediaAudio) {
	
	mut audio := _audio
	file_name := os.file_name(path)
	audio.@type = 'audio'
	if audio.media == '' {
		audio.media = 'attach://${file_name}-${group.media.len}'
	}
	group.media << audio
	group.paths << path
}

// new_media_group only for sending uploaded media.
// For passing URL or file_id need create a straight request with bot.send_media_group. 
// Media group must contain min 2 items and can't be mixed with other media types
pub fn new_media_group() MediaGroupUpload{
	return MediaGroupUpload{}
}
