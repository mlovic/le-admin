class AddIdToGroupsTests < ActiveRecord::Migration
  def change
    add_column :groups_tests, :id, :primary_key
  end
end
