class Address < ApplicationRecord
  has_one :customer_addresses
  has_one :store_addresses
end
