class AddCartToListItem < ActiveRecord::Migration[7.0]
  def change
    add_reference :list_items, :cart, null: true  , foreign_key: true
  end
end
