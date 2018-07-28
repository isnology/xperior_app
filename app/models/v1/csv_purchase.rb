class V1::CsvPurchase < ApplicationRecord
  
  def load(update: false)
    CSV.foreach("data/purchases.txt", headers: true, header_converters: :symbol) do |row|
      record = row.to_h
      if record.key(nil)
        V1::Error.new({Step: 'read CSV', file: 'purchases', reason: '01 - nil field value', data: row}).save
      else
        if update
          unless V1::CsvPurchase.new(record).save
            V1::Error.new({Step: 'write CSV to DB', file: 'purchases', reason: '02 - write failed', data: record}).save
          end
        end
      end
    end
  end
end
