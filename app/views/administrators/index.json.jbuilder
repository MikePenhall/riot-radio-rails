json.array!(@administrators) do |administrator|
  json.extract! administrator, 
  json.url administrator_url(administrator, format: :json)
end
