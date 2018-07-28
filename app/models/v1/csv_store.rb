class V1::CsvStore < ApplicationRecord
  
  def load
    count = 0
    CSV.foreach("data/stores.txt", headers: true, header_converters: :symbol) do |row|
      count += 1
      unless V1::CsvStore.new(row.to_h).save
        puts "error converting Stores from CSV"
      end
    end
    puts "some Store records not converted" if count != CsvStore.count
  end
  
end
