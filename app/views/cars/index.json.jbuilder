json.array!(@cars) do |car|
  json.extract! car, :id, :model, :model_year_month, :kilometers, :color
  json.url car_url(car, format: :json)
end
