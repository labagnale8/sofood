class CreateChiefs < ActiveRecord::Migration
  def change
    create_table :chiefs do |t|
      t.string :name
      t.string :photo

      t.timestamps null: false
    end
  end
end
