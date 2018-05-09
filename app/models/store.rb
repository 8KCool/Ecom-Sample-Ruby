class Store < ApplicationRecord
  belongs_to :customer
  has_many :products
end
