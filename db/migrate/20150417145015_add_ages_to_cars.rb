class AddAgesToCars < ActiveRecord::Migration
  def change
    add_column :cars, :ages, :integer, array: true, default: []
    add_index :cars, :ages, using: 'gin'
  end
end
