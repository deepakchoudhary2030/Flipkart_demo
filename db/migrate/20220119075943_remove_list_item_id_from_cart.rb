class RemoveListItemIdFromCart < ActiveRecord::Migration[7.0]
  def change
    remove_column :carts, :list_item_id, :integer
  end
end
