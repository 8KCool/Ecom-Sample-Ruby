class AddMinimumquantityToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :minimum_quantity, :integer
  end
end
