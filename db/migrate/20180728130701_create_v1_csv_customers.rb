class CreateV1CsvCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :v1_csv_customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :street_number
      t.string :street_name
      t.string :suburb
      t.string :state
      t.string :postcode
    end
  end
end
