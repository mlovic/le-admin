class ChangeGroupsTestsTableNameToTestDeliveries < ActiveRecord::Migration
  def change
    rename_table :groups_tests, :test_deliveries
  end
end
