json.array!(@builds) do |build|
  json.extract! build, :start_date, :start_qty, :yield_qty
  json.url build_url(build, format: :json)
end
