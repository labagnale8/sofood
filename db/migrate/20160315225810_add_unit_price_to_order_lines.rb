class AddUnitPriceToOrderLines < ActiveRecord::Migration
  def change
    add_column :order_lines, :unit_price,  :decimal, precision: 12, scale: 3
  end
end
