json.array!(@people) do |person|
  json.extract! person, :id, :name, :weight, :height, :color
  json.url person_url(person, format: :json)
end
