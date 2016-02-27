class AddAltNameColToTests < ActiveRecord::Migration
  def change
    add_column :tests, :alt_name, :string
  end
end
