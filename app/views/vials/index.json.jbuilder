json.array!(@vials) do |vial|
  json.extract! vial, :id
  json.url vial_url(vial, format: :json)
end
