class V1::CsvPurchase < ApplicationRecord
  
  def load
    count = 0
    CSV.foreach("data/purchases.txt", headers: true, header_converters: :symbol) do |row|
      count += 1
      unless V1::CsvPurchase.new(row.to_h).save
        puts "error converting Purchases from CSV"
      end
    end
    puts "some Purchase records not converted" if count != CsvPurchase.count
  end
  
end
