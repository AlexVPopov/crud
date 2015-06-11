class ChangeYearType < ActiveRecord::Migration
  def change
    rename_column :cars, :year, :year_old
    add_column :cars, :year, :date, null: false, default: Date.new(1900)
    Car.all.each { |car| car.year = Date.new(car.year_old) }
    remove_column :cars, :year_old
  end
end
