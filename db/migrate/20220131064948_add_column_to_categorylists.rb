class AddColumnToCategorylists < ActiveRecord::Migration[7.0]
  def change
    add_column :categorylists, :cover, :string
  end
end
