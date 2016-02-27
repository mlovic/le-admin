json.array!(@tests) do |test|
  json.extract! test, :id, :number, :test_book_id
  json.url test_url(test, format: :json)
end
