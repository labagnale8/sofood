class RemoveUnitPriceFromOrderLines < ActiveRecord::Migration
  def change
    remove_column :order_lines, :unit_price, :float
  end
end
