class AddChiefToMeals < ActiveRecord::Migration
  def change
    add_reference :meals, :chief, index: true, foreign_key: true
  end
end
