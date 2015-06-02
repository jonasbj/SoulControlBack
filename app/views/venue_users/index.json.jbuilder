json.array!(@venue_users) do |venue_user|
  json.extract! venue_user, :id
  json.url venue_user_url(venue_user, format: :json)
end
