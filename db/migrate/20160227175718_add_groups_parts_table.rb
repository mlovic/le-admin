class AddGroupsPartsTable < ActiveRecord::Migration
  def change
    create_table :groups_tests, id: false do |t|
      t.belongs_to :groups, index: true
      t.belongs_to :tests, index: true
    end
  end
end
