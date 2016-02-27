json.array!(@groups) do |group|
  json.extract! group, :id, :level, :name, :color
  json.url group_url(group, format: :json)
end
