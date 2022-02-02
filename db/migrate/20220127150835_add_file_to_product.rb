class AddFileToProduct < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :file, :string
  end
end
