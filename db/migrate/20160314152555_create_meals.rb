class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.string :name
      t.float :price
      t.text :description
      t.string :photo
      t.string :chief
      t.integer :available_quantity

      t.timestamps null: false
    end
  end
end
