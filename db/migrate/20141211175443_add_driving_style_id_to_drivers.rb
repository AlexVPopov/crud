class AddDrivingStyleIdToDrivers < ActiveRecord::Migration
  def change
    add_column :drivers, :driving_style_id, :integer
    add_index :drivers, :driving_style_id
  end
end
