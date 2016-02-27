class ChangeTestBooksIdNameInTests < ActiveRecord::Migration
  def change
    rename_column :tests, :book_id, :test_book_id
  end
end
