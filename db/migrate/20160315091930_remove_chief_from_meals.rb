class RemoveChiefFromMeals < ActiveRecord::Migration
  def change
    remove_column :meals, :chief, :string
  end
end
