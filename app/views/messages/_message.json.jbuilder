json.extract! message, :id, :text, :from_user_id, :to_user_id, :created_at, :updated_at
json.url message_url(message, format: :json)
