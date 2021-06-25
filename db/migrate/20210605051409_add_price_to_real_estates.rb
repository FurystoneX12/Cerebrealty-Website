class AddPriceToRealEstates < ActiveRecord::Migration[6.1]
  def change
    add_column :real_estates, :price, :decimal
    add_index :real_estates, :price
  end
end
