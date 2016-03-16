class RemoveTotalLinePriceFromOrderLines < ActiveRecord::Migration
  def change
    remove_column :order_lines, :total_line_price, :float
  end
end

