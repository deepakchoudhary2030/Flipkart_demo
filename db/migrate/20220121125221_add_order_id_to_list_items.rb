class AddOrderIdToListItems < ActiveRecord::Migration[7.0]
  def change
    add_column :list_items, :order_id, :integer
  end
end
