class ChangeYearName < ActiveRecord::Migration
  def change
    rename_column :cars, :year, :model_year_month
  end
end
