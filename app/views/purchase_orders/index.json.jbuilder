json.array!(@purchase_orders) do |purchase_order|
  json.extract! purchase_order, :Date, :purchase_order_number
  json.url purchase_order_url(purchase_order, format: :json)
end
