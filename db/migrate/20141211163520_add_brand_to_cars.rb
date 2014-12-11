class AddBrandToCars < ActiveRecord::Migration
  def change
    add_column :cars, :brand, :string
  end
end
