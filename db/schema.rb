# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_04_29_041552) do

  create_table "listings", force: :cascade do |t|
    t.string "offer_type"
    t.string "object"
    t.float "land_area"
    t.float "floor_area"
    t.string "town_and_province"
    t.integer "bedroom"
    t.integer "bathroom"
    t.integer "carport"
    t.binary "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bathroom"], name: "index_listings_on_bathroom"
    t.index ["bedroom"], name: "index_listings_on_bedroom"
    t.index ["carport"], name: "index_listings_on_carport"
    t.index ["floor_area"], name: "index_listings_on_floor_area"
    t.index ["land_area"], name: "index_listings_on_land_area"
    t.index ["object"], name: "index_listings_on_object"
    t.index ["offer_type"], name: "index_listings_on_offer_type"
    t.index ["town_and_province"], name: "index_listings_on_town_and_province"
  end

end
