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

ActiveRecord::Schema.define(version: 2020_09_07_021553) do

  create_table "appointments", force: :cascade do |t|
    t.integer "client_id", null: false
    t.integer "nail_technician_id", null: false
    t.string "day"
    t.integer "time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["client_id"], name: "index_appointments_on_client_id"
    t.index ["nail_technician_id"], name: "index_appointments_on_nail_technician_id"
  end

  create_table "clients", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "email"
    t.integer "phone_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "nail_services", force: :cascade do |t|
    t.integer "nail_technician_id", null: false
    t.string "nail_service_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["nail_technician_id"], name: "index_nail_services_on_nail_technician_id"
  end

  create_table "nail_technicians", force: :cascade do |t|
    t.string "name"
    t.string "skill_set"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "stores", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.integer "phone_number"
    t.integer "store_hours"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "appointments", "clients"
  add_foreign_key "appointments", "nail_technicians"
  add_foreign_key "nail_services", "nail_technicians"
end
