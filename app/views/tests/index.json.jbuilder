json.array!(@tests) do |test|
  json.extract! test, :id, :number, :book_id
  json.url test_url(test, format: :json)
end
