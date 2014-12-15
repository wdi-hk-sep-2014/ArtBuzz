json.array!(@events) do |event|
  json.extract! event, :id, :artist, :title, :open, :time, :close
  json.venue event.venue.name
  json.address event.venue.address
  json.district event.venue.district
  json.url event_url(event, format: :json)
end
