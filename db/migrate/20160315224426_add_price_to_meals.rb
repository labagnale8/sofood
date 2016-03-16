class AddPriceToMeals < ActiveRecord::Migration
  def change
    add_column :meals, :price,  :decimal, precision: 12, scale: 3

  end
end
