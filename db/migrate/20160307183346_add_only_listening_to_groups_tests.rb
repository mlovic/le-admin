class AddOnlyListeningToGroupsTests < ActiveRecord::Migration
  def change
    add_column :groups_tests, :only_listening, :boolean, default: false
  end
end
