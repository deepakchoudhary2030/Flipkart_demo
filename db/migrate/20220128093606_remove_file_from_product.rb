class RemoveFileFromProduct < ActiveRecord::Migration[7.0]
  def change
    remove_column :products, :file, :string
  end
end
