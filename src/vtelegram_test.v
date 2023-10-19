module vtelegram

struct App {
	Bot
}

// shouldn't execute
[message: 'q']
fn (mut app App) never_passed_method(result Result) ! {
	assert false
}

[message]
fn (mut app App) messages(result Result) ! {
	message := app.send_message(chat_id: result.update.message.chat.id, text: 'test') or {
		Message{
			message_id: -1
		}
	}
	assert result.update.message.message_id == 123456
	assert result.update.message.chat.id == 11
	assert result.update.message.text == 'hello'
	assert message.message_id == -1
}

[message: 'starts_with: he']
fn (mut app App) starts_with_messages(result Result) ! {
	message := app.send_message(chat_id: result.update.message.chat.id, text: 'test') or {
		Message{
			message_id: -1
		}
	}
	assert result.update.message.message_id == 123456
	assert result.update.message.chat.id == 11
	assert result.update.message.text == 'hello'
	assert message.message_id == -1
}

[shipping_query]
fn (mut app App) shipping_query(result Result) ! {
	assert result.update.shipping_query.id == '333'
	assert result.update.shipping_query.from.id == 12
	assert result.update.shipping_query.invoice_payload == 'qq'
}

fn test_handler_pass() {
	mut app := App{}
	mut mw := Regular{}
	polling_config := PollingConfig[Regular]{}
	handle_update[App, Regular](mut app, mut mw, Update{
		message: Message{
			message_id: 123456
			chat: Chat{
				id: 11
			}
			text: 'hello'
		}
	})
	handle_update[App, Regular](mut app, mut mw, Update{
		shipping_query: ShippingQuery{
			id: '333'
			from: User{
				id: 12
			}
			invoice_payload: 'qq'
		}
	})

	assert true
}
