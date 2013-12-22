json.array!(@quantities) do |quantity|
  json.extract! quantity, :amount
  json.url quantity_url(quantity, format: :json)
end
