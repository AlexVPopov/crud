json.array!(@driving_styles) do |driving_style|
  json.extract! driving_style, :id, :type
  json.url driving_style_url(driving_style, format: :json)
end
