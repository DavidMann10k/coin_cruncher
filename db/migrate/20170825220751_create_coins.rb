class CreateCoins < ActiveRecord::Migration[5.1]
  def change
    create_table :coins do |t|
      t.string :crypto_compare_id
      t.string :url
      t.string :image_url
      t.string :name
      t.string :coin_name
      t.string :full_name
      t.string :algorithm
      t.string :proof_type
      t.string :fully_premined
      t.string :total_coin_supply
      t.string :premined_value
      t.string :total_coins_free_float
      t.string :sort_order

      t.timestamps
    end
  end
end
