# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160720222025) do

  create_table "claimers", force: :cascade do |t|
    t.string   "fio"
    t.string   "phone"
    t.string   "email"
    t.string   "city"
    t.string   "adress"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "devices", force: :cascade do |t|
    t.string   "model"
    t.string   "serial_number"
    t.string   "brand"
    t.string   "type"
    t.string   "defect"
    t.string   "accessories"
    t.string   "appearences"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "masters", force: :cascade do |t|
    t.string   "name"
    t.string   "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "repair_orders", force: :cascade do |t|
    t.integer  "claimer_id"
    t.integer  "device_id"
    t.integer  "master_id"
    t.integer  "status_order_id"
    t.boolean  "type_order"
    t.datetime "date_create"
    t.datetime "date_complite"
    t.datetime "date_return"
    t.datetime "date_dead_line"
    t.string   "description"
    t.datetime "waranty_period"
    t.datetime "date_purchase"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "status_orders", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "used_repair_parts", force: :cascade do |t|
    t.string   "code"
    t.integer  "qtty"
    t.string   "description"
    t.float    "price"
    t.integer  "stack_id"
    t.integer  "repair_order_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
