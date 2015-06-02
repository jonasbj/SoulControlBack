json.array!(@event_user_statuses) do |event_user_status|
  json.extract! event_user_status, :id
  json.url event_user_status_url(event_user_status, format: :json)
end
