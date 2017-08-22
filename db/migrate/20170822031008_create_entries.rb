class CreateEntries < ActiveRecord::Migration[5.1]
  def change
    create_table :entries do |t|
      t.boolean :credit, null: false
      t.string :name, null: false
      t.decimal :quantity, null: false
      t.references :trade, foreign_key: true, null: false

      t.timestamps
    end
  end
end
