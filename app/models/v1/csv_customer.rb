class V1::CsvCustomer < ApplicationRecord
  
  def load
    count = 0
    CSV.foreach("data/customers.txt", headers: true, header_converters: :symbol) do |row|
      count += 1
      unless V1::CsvCustomer.new(row.to_h).save
        puts "error converting Customers from CSV"
      end
    end
    puts "some Customer records not converted" if count != CsvCustomer.count
  end
  
end
