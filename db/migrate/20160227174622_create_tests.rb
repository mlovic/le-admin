class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.integer :number
      t.integer :test_book_id

      t.timestamps null: false
    end
  end
end
