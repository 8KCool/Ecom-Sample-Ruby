class Product < ApplicationRecord
  belongs_to :store

  def sell
    self.quantity-=1
  end

end
