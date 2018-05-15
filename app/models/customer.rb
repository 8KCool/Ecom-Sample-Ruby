class Customer < ApplicationRecord
  has_many :stores
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  def owner?(store)
    store.customer == self
  end
end
