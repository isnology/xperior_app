class Purchase < ApplicationRecord
  belongs_to :store
  belongs_to :sku
  belongs_to :customer
end
