class AddSloganToStore < ActiveRecord::Migration[5.2]
  def change
    add_column :stores, :slogan, :string
  end
end
