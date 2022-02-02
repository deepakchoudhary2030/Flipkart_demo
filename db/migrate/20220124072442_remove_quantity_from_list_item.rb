class RemoveQuantityFromListItem < ActiveRecord::Migration[7.0]
  def change
    remove_column :list_items, :quantity, :integer
  end
end
