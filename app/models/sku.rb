class Sku < ApplicationRecord
  belongs_to :product
  has_many :purchases
end
