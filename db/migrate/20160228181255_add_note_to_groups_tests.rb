class AddNoteToGroupsTests < ActiveRecord::Migration
  def change
    add_column :groups_tests, :note, :string
  end
end
