# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140219123833) do

  create_table "Items", force: true do |t|
    t.integer  "part_number"
    t.string   "name"
    t.integer  "on_order_qty"
    t.integer  "in_inspection_qty"
    t.integer  "stock_qty"
    t.integer  "ncmr_qty"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name_and_number"
  end

  add_index "Items", ["name"], name: "index_items_on_name"
  add_index "Items", ["part_number"], name: "index_items_on_part_number"

  create_table "Items_PurchaseOrders", id: false, force: true do |t|
    t.integer "purchase_order_id", null: false
    t.integer "item_id",           null: false
  end

  create_table "builds", force: true do |t|
    t.date     "start_date"
    t.integer  "start_qty"
    t.integer  "yield_qty"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "components", force: true do |t|
    t.integer  "part_number"
    t.string   "name"
    t.integer  "on_order_qty"
    t.integer  "received_qty"
    t.integer  "stock_qty"
    t.integer  "ncmr_qty"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employees", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lots", force: true do |t|
    t.integer  "number"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "initial_qty"
    t.integer  "current_qty"
    t.integer  "item_id"
    t.boolean  "cleaned"
  end

  create_table "orders", force: true do |t|
    t.integer  "purchase_order_id"
    t.integer  "supplier_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders_js", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "parts", force: true do |t|
    t.integer  "item_id"
    t.integer  "supplier_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "parts", ["item_id"], name: "index_parts_on_item_id"
  add_index "parts", ["supplier_id"], name: "index_parts_on_supplier_id"

  create_table "purchase_orders", force: true do |t|
    t.date     "Date"
    t.string   "purchase_order_number"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "description"
    t.decimal  "amount"
  end

  create_table "quantities", force: true do |t|
    t.string   "count"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "purchase_order_id"
    t.integer  "item_id"
    t.integer  "count_received"
    t.integer  "count_remaining"
  end

  add_index "quantities", ["count_received"], name: "index_quantities_on_count_received"
  add_index "quantities", ["count_remaining"], name: "index_quantities_on_count_remaining"
  add_index "quantities", ["item_id"], name: "index_quantities_on_item_id"
  add_index "quantities", ["purchase_order_id"], name: "index_quantities_on_purchase_order_id"

  create_table "suppliers", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
