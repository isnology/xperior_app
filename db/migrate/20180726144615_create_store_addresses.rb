class CreateStoreAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :store_addresses do |t|
      t.references :store, foreign_key: true
      t.references :address, foreign_key: true

      t.timestamps
    end
  end
end
