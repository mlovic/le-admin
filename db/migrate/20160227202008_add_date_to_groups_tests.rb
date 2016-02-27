class AddDateToGroupsTests < ActiveRecord::Migration
  def change
    add_column :groups_tests, :test_date, :date
  end
end
