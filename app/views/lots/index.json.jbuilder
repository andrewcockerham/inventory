json.array!(@lots) do |lot|
  json.extract! lot, :number
  json.url lot_url(lot, format: :json)
end
