class ChangeGroupsTestsColumnNames < ActiveRecord::Migration
  def change
    rename_column :groups_tests, :groups_id, :group_id
    rename_column :groups_tests, :tests_id, :test_id
  end
end
