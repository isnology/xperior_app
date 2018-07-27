class CreateSkus < ActiveRecord::Migration[5.1]
  def change
    create_table :skus do |t|
      t.integer :sku
      t.integer :price_cents
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
