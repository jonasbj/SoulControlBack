json.array!(@venue_roles) do |venue_role|
  json.extract! venue_role, :id
  json.url venue_role_url(venue_role, format: :json)
end
