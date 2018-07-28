class Customer < ApplicationRecord
  has_many :customer_addresses
  has_many :addresses, through: :customer_addresses
  has_many :purchases
end
