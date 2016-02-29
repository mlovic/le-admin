json.array!(@groups_tests) do |groups_test|
  json.extract! groups_test, :id
  json.url groups_test_url(groups_test, format: :json)
end
