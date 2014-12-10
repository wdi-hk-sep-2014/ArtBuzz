json.array!(@events) do |event|
  json.extract! event, :id, :title, :artist, :date, :datetime
  json.url event_url(event, format: :json)
end
