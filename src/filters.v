module vtelegram

fn validate_filter(update Update, value string) bool{
	match value {
		'sender_bot'{
			if update.message.from.is_bot {
				return true
			}
		}
		'sender_user'{
			if !update.message.from.is_bot {
				return true 
			} 
		}
		'sender_channel' {
			if update.message.sender_chat.@type == 'channel' //|| update.edited_message.sender_chat.@type  == 'channel'
			{
				return true
			}
		}
		'sender_group' {
			if update.message.sender_chat.@type == 'group' || //update.edited_message.sender_chat.@type  == 'group' ||
			   update.message.sender_chat.@type == 'supergroup'  //|| update.edited_message.sender_chat.@type  == 'supergroup'
			{
				return true
			}
		}
		'text' {
			if update.message.text != '' || update.edited_message.text != '' ||
			update.channel_post.text != '' || update.edited_channel_post.text != '' 
			{
				return true
			}
		}
		'forward'{
			if update.message.forward_date != 0 || 
			update.channel_post.forward_date != 0 ||
			update.message.forward_from_chat.id != 0 || 
			update.channel_post.forward_from_chat.id != 0  
			{
				return true
			}
		}
		'reply'{
			if update.message.reply_to_message.message_id != 0 
			{
				return true
			}
		}
		'private'{
			if update.message.chat.@type == 'private' || update.edited_message.chat.@type  == 'private'
			{
				return true
			}
		}
		'group'{
			if update.message.chat.@type == 'group' || update.edited_message.chat.@type  == 'group' ||
			   update.message.chat.@type == 'supergroup' || update.edited_message.chat.@type  == 'supergroup'
			{
				return true
			}
		}
		'channel'{
			if update.message.chat.@type == 'channel' || update.edited_message.chat.@type  == 'channel' ||
			   update.channel_post.chat.@type == 'channel' || update.edited_channel_post.chat.@type  == 'channel'
			{
				return true
			}
		}
		'entities'{
			if update.poll.explanation_entities.len > 0 || 
			update.message.entities.len > 0 || update.message.caption_entities.len > 0 ||
			update.message.poll.explanation_entities.len > 0 ||
			
			update.edited_message.entities.len > 0 || update.edited_message.caption_entities.len > 0 ||
			update.edited_message.poll.explanation_entities.len > 0 ||
			
			update.channel_post.entities.len > 0 || update.channel_post.caption_entities.len > 0 ||
			update.channel_post.poll.explanation_entities.len > 0 ||

			update.edited_channel_post.entities.len > 0 || update.edited_channel_post.caption_entities.len > 0 ||
			update.edited_channel_post.poll.explanation_entities.len > 0
			{
				return true
			}
		}
		'animation' {
			if update.message.animation.file_id != '' ||
			update.edited_message.animation.file_id != '' ||
			update.channel_post.animation.file_id != '' ||
			update.edited_channel_post.animation.file_id != '' 
			{
				return true
			}
		}
		'audio'{
			if update.message.audio.file_id != '' ||
			update.edited_message.audio.file_id != '' ||
			update.channel_post.audio.file_id != '' ||
			update.edited_channel_post.audio.file_id != '' 
			{
				return true
			}

		}
		'document'{
			if update.message.document.file_id != '' ||
			update.edited_message.document.file_id != '' ||
			update.channel_post.document.file_id != '' ||
			update.edited_channel_post.document.file_id != '' 
			{
				return true
			}
		}
		'photo'{
			if update.message.photo.len > 0 ||
			update.edited_message.photo.len > 0 ||
			update.channel_post.photo.len > 0 ||
			update.edited_channel_post.photo.len > 0 
			{
				return true
			}
		}
		'sticker'{
			if update.message.sticker.file_id != '' ||
			update.edited_message.sticker.file_id != '' ||
			update.channel_post.sticker.file_id != '' ||
			update.edited_channel_post.sticker.file_id != '' 
			{
				return true
			}
		}
		'video'{
			if update.message.video.file_id != '' ||
			update.edited_message.video.file_id != '' ||
			update.channel_post.video.file_id != '' ||
			update.edited_channel_post.video.file_id != '' 
			{
				return true
			}
		}
		'video_note'{
			if update.message.video_note.file_id != '' ||
			update.edited_message.video_note.file_id != '' ||
			update.channel_post.video_note.file_id != '' ||
			update.edited_channel_post.video_note.file_id != '' 
			{
				return true
			}
		}
		'voice'{
			if update.message.voice.file_id != '' ||
			update.edited_message.voice.file_id != '' ||
			update.channel_post.voice.file_id != '' ||
			update.edited_channel_post.voice.file_id != '' 
			{
				return true
			}
		}
		'contact'{
			if update.message.contact.phone_number != '' ||
			update.edited_message.contact.phone_number != '' ||
			update.channel_post.contact.phone_number != '' ||
			update.edited_channel_post.contact.phone_number != '' 
			{
				return true
			}
		}
		'dice'{
			if update.message.dice.emoji != '' ||
			update.edited_message.dice.emoji != '' ||
			update.channel_post.dice.emoji != '' ||
			update.edited_channel_post.dice.emoji != '' 
			{
				return true
			}
		}
		'game'{
			if update.message.game.title != '' ||
			update.edited_message.game.title != '' ||
			update.channel_post.game.title != '' ||
			update.edited_channel_post.game.title != '' 
			{
				return true
			}
		}
		'poll'{
			if update.message.poll.id != '' ||
			update.edited_message.poll.id != '' ||
			update.channel_post.poll.id != '' ||
			update.edited_channel_post.poll.id != '' 
			{
				return true
			}
		}
		'venue'{
			if update.message.venue.title != '' ||
			update.edited_message.venue.title != '' ||
			update.channel_post.venue.title != '' ||
			update.edited_channel_post.venue.title != '' 
			{
				return true
			}
		}
		'location'{
			if update.message.location.longitude != 0.0 ||
			update.edited_message.location.longitude != 0.0 ||
			update.channel_post.location.longitude != 0.0 ||
			update.edited_channel_post.location.longitude != 0.0
			{
				return true
			}
		}
		'new_chat_members'{
			if update.message.new_chat_members.len > 0
			{
				return true
			}
		}
		'left_chat_member'{
			if update.message.left_chat_member.id != 0
			{
				return true
			}
		}
		'new_chat_title'{
			if update.message.new_chat_title != ''
			{
				return true
			}
		}
		'new_chat_photo'{
			if update.message.new_chat_photo.len > 0
			{
				return true
			}
		}
		'delete_chat_photo'{
			return update.message.delete_chat_photo
		}
		'group_chat_created'{
			return update.message.group_chat_created
		}
		'supergroup_chat_created'{
			return update.message.reply_to_message.supergroup_chat_created
		}
		'channel_chat_created'{
			return update.message.reply_to_message.channel_chat_created
		}
		'message_auto_delete_timer_changed'{
			if update.message.message_auto_delete_timer_changed.message_auto_delete_time > -1
			{
				return true
			}
		}
		'is_topic_message'{
			return update.message.is_topic_message
		}
		'pinned_message'{
			if update.message.pinned_message.text != '' ||
			update.channel_post.pinned_message.text != '' ||
			update.message.pinned_message.caption != '' ||
			update.channel_post.pinned_message.caption != '' 
			{
				return true
			}
		}
		'invoice'{
			if update.message.invoice.title != '' 
			{
				return true
			}
		}
		'successful_payment'{
			if update.message.successful_payment.currency != '' 
			{
				return true
			}
		}
		'user_shared'{
			if update.message.user_shared.request_id != 0
			{
				return true
			}
		}
		'chat_shared'{
			if update.message.chat_shared.request_id != 0
			{
				return true
			}
		}
		'connected_website'{
			if update.message.connected_website != ''
			{
				return true
			}
		}
		// 'write_access_allowed'{
		// 	if update.message.write_access_allowed. != ''
		// 	{
		// 		return true
		// 	}
		// }
		'passport_data'{
			if update.message.passport_data.data.len > 0 || 
			update.channel_post.passport_data.data.len > 0
			{
				return true
			}
		}
		'proximity_alert_triggered'{
			if update.message.proximity_alert_triggered.traveler.id != 0
			{
				return true
			}
		}
		'video_chat_scheduled'{
			if update.message.video_chat_scheduled.start_date != 0 || 
			update.channel_post.video_chat_scheduled.start_date > 0
			{
				return true
			}
		}
		'video_chat_started'{

		}
		'video_chat_ended'{
			if update.message.video_chat_ended.duration != 0 || 
			update.channel_post.video_chat_ended.duration != 0
			{
				return true
			}
		}
		'video_chat_participants_invited'{
			if update.message.video_chat_participants_invited.users.len > 0 || 
			update.channel_post.video_chat_participants_invited.users.len > 0
			{
				return true
			}
		}
		'web_app_data'{
			if update.message.web_app_data.data != ''
			{
				return true
			}
		}
		else{}
	}
	return false
}

