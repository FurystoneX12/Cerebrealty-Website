class CreateRealEstates < ActiveRecord::Migration[6.1]
  def change
    create_table :real_estates do |t|
      t.string :offer_type
      t.string :object
      t.float :land_area
      t.float :floor_area
      t.string :town_and_province
      t.integer :bedroom
      t.integer :bathroom
      t.integer :carport
      t.binary :image

      t.timestamps
    end
    add_index :real_estates, :offer_type
    add_index :real_estates, :object
    add_index :real_estates, :land_area
    add_index :real_estates, :floor_area
    add_index :real_estates, :town_and_province
    add_index :real_estates, :bedroom
    add_index :real_estates, :bathroom
    add_index :real_estates, :carport
  end
end
