class CreateProperties < ActiveRecord::Migration[6.1]
  def change
    create_table :properties do |t|
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
    add_index :properties, :offer_type
    add_index :properties, :object
    add_index :properties, :land_area
    add_index :properties, :floor_area
    add_index :properties, :town_and_province
    add_index :properties, :bedroom
    add_index :properties, :bathroom
    add_index :properties, :carport
  end
end
