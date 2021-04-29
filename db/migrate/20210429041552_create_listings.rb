class CreateListings < ActiveRecord::Migration[6.1]
  def change
    create_table :listings do |t|
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
    add_index :listings, :offer_type
    add_index :listings, :object
    add_index :listings, :land_area
    add_index :listings, :floor_area
    add_index :listings, :town_and_province
    add_index :listings, :bedroom
    add_index :listings, :bathroom
    add_index :listings, :carport
  end
end
