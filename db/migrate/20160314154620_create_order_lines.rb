class CreateOrderLines < ActiveRecord::Migration
  def change
    create_table :order_lines do |t|
      t.references :order, index: true, foreign_key: true
      t.references :meal, index: true, foreign_key: true
      t.integer :quantity
      t.float :total_line_price

      t.timestamps null: false
    end
  end
end
