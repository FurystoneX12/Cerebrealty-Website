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

ActiveRecord::Schema.define(version: 2021_05_17_133944) do

  create_table "law_articles", force: :cascade do |t|
    t.string "article_name"
    t.string "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["article_name"], name: "index_law_articles_on_article_name"
  end

  create_table "real_estates", force: :cascade do |t|
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
    t.text "caption"
    t.index ["bathroom"], name: "index_real_estates_on_bathroom"
    t.index ["bedroom"], name: "index_real_estates_on_bedroom"
    t.index ["caption"], name: "index_real_estates_on_caption"
    t.index ["carport"], name: "index_real_estates_on_carport"
    t.index ["floor_area"], name: "index_real_estates_on_floor_area"
    t.index ["land_area"], name: "index_real_estates_on_land_area"
    t.index ["object"], name: "index_real_estates_on_object"
    t.index ["offer_type"], name: "index_real_estates_on_offer_type"
    t.index ["town_and_province"], name: "index_real_estates_on_town_and_province"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
