class RenameOrderStatus < ActiveRecord::Migration
  def change
    rename_table :order_status, :order_statuses
  end
end
