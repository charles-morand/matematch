# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_08_25_142404) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contact_requests", force: :cascade do |t|
    t.bigint "guide_id", null: false
    t.bigint "explorer_id", null: false
    t.string "activity"
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["explorer_id"], name: "index_contact_requests_on_explorer_id"
    t.index ["guide_id"], name: "index_contact_requests_on_guide_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.text "bio"
    t.integer "age"
    t.date "birth_date"
    t.string "gender"
    t.string "phone_number"
    t.string "role"
    t.string "languages", default: [], array: true
    t.string "hobbies", default: [], array: true
    t.text "chosen_activities", default: [], array: true
    t.string "address"
    t.float "latitude"
    t.float "longitude"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "contact_requests", "users", column: "explorer_id"
  add_foreign_key "contact_requests", "users", column: "guide_id"
end
