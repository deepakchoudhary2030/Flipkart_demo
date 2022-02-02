class RemoveOrderIdFromListItem < ActiveRecord::Migration[7.0]
  def change
    remove_column :list_items, :order_id, :integer
  end
end
