class RemovePriceFromMeals < ActiveRecord::Migration
  def change
    remove_column :meals, :price, :float
  end
end
