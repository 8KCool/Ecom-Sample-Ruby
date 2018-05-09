class AddCustomerToStore < ActiveRecord::Migration[5.2]
  def change
    add_reference :stores, :customer, foreign_key: true
  end
end
