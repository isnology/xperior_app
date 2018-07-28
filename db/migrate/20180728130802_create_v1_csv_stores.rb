class CreateV1CsvStores < ActiveRecord::Migration[5.1]
  def change
    create_table :v1_csv_stores do |t|
      t.string :store_name
      t.string :store_location
      t.string :street_number
      t.string :street_name
      t.string :suburb
      t.string :state
      t.string :postcode
    end
  end
end
