class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :phone
      t.string :level
      t.string :notes
      t.integer :group_id

      t.timestamps null: false
    end
    add_index :students, :group_id
  end
end
