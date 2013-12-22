json.array!(@items) do |item|
  json.extract! item, :part_number, :name, :on_order_qty, :received_qty, :stock_qty, :ncmr_qty
  json.url item_url(item, format: :json)
end
