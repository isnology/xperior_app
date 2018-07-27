class CreatePurchases < ActiveRecord::Migration[5.1]
  def change
    create_table :purchases do |t|
      t.date :date
      t.references :store, foreign_key: true
      t.references :sku, foreign_key: true
      t.integer :quantity
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end
