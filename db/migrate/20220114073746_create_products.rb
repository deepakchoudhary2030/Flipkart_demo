class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :detail
      t.integer :price
      t.references :categorylist, null: false, foreign_key: true
      t.timestamps
    end
  end
end
