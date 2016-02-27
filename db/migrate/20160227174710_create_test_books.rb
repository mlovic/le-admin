class CreateTestBooks < ActiveRecord::Migration
  def change
    create_table :test_books do |t|
      t.string :level
      t.string :name
      t.string :year
      t.integer :number

      t.timestamps null: false
    end
  end
end
