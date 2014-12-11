class RenameColumnTypeOfDrivingStyle < ActiveRecord::Migration
  def change
    rename_column :driving_styles, :type, :style_type
  end
end
