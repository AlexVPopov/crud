class CreateDrivingStyles < ActiveRecord::Migration
  def change
    create_table :driving_styles do |t|
      t.string :type

      t.timestamps
    end
  end
end
