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

ActiveRecord::Schema[7.2].define(version: 2024_08_24_005249) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "coffee_tags", force: :cascade do |t|
    t.bigint "coffee_id", null: false
    t.bigint "tag_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["coffee_id"], name: "index_coffee_tags_on_coffee_id"
    t.index ["tag_id"], name: "index_coffee_tags_on_tag_id"
  end

  create_table "coffees", force: :cascade do |t|
    t.string "name"
    t.bigint "roaster_id", null: false
    t.string "origin"
    t.string "roast_level"
    t.text "flavor_notes"
    t.decimal "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["roaster_id"], name: "index_coffees_on_roaster_id"
  end

  create_table "favorites", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "roaster_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["roaster_id"], name: "index_favorites_on_roaster_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "locations", force: :cascade do |t|
    t.bigint "roaster_id", null: false
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "zip_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["roaster_id"], name: "index_locations_on_roaster_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "roaster_id", null: false
    t.text "content"
    t.integer "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["roaster_id"], name: "index_reviews_on_roaster_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "roasters", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.text "description"
    t.string "website"
    t.decimal "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "coffee_tags", "coffees"
  add_foreign_key "coffee_tags", "tags"
  add_foreign_key "coffees", "roasters"
  add_foreign_key "favorites", "roasters"
  add_foreign_key "favorites", "users"
  add_foreign_key "locations", "roasters"
  add_foreign_key "reviews", "roasters"
  add_foreign_key "reviews", "users"
end
