json.array!(@events) do |event|
  json.extract! event, :id, :artist, :title, :open, :time, :close
  json.url event_url(event, format: :json)
end
