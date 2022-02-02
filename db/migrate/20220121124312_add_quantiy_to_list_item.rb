class AddQuantiyToListItem < ActiveRecord::Migration[7.0]
  def change
    add_column :list_items, :quantity, :integer, :default => 1
  end
end
