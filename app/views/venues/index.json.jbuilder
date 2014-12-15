json.array!(@venues) do |venue|
  json.extract! venue, :id, :name, :address, :district, :hours
  json.url venue_url(venue, format: :json)
end
