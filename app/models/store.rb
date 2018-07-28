class Store < ApplicationRecord
  has_many :store_addresses
  has_many :addresses, through: :store_addresses
  has_many :purchases
end
