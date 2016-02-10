json.array!(@events) do |event|
  json.extract! event, :id, :user_id, :name, :date, :ticket_price, :description
  json.url event_url(event, format: :json)
end
