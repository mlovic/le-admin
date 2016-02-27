json.array!(@test_books) do |test_book|
  json.extract! test_book, :id, :level, :name, :year, :number
  json.url test_book_url(test_book, format: :json)
end
