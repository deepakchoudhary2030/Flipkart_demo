class CreateCategorylists < ActiveRecord::Migration[7.0]
  def change
    create_table :categorylists do |t|
      t.string :name
      t.references :category, foreign_key: { to_table: :categorylists }
      t.timestamps
    end
  end
end
