class AddPhoneColumnToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :phone, :integer
    add_index :users, :phone, unique: true

  end
end
