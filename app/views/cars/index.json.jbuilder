json.array!(@cars) do |car|
  json.extract! car, :id, :model, :year, :kilometers, :color
  json.url car_url(car, format: :json)
end
