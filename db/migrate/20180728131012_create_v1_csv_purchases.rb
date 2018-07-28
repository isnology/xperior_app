class CreateV1CsvPurchases < ActiveRecord::Migration[5.1]
  def change
    create_table :v1_csv_purchases do |t|
      t.string :date
      t.string :store_name
      t.string :store_location
      t.string :customer_email
      t.string :product_name
      t.string :sku
      t.string :quantity
      t.string :item_price
    end
  end
end
