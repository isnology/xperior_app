class V1::CsvCustomer < ApplicationRecord
  
  def load(update: false)
    CSV.foreach("data/customers.txt", headers: true, header_converters: :symbol) do |row|
      record = row.to_h
      if record.key(nil)
        V1::Error.new({Step: 'read CSV', file: 'customers', reason: '01 - nil field value', data: row}).save
      else
        if update
          unless V1::CsvCustomer.new(record).save
            V1::Error.new({Step: 'write CSV to DB', file: 'customers', reason: '02 - write failed', data: record}).save
          end
        end
      end
    end
  end
  
  
  
end
