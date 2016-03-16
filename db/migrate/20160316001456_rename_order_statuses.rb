class RenameOrderStatuses < ActiveRecord::Migration
  def change
     rename_table :order_statuses, :order_status
  end
end
