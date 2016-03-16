class AddTotalPriceToOrderLines < ActiveRecord::Migration
  def change
    add_column :order_lines, :total_price,  :decimal, precision: 12, scale: 3
  end
end
