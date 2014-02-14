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

ActiveRecord::Schema.define(version: 20140213102445) do

  create_table "catalog_shops", force: true do |t|
    t.string   "name"
    t.integer  "shop_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "catalog_shops", ["shop_id"], name: "index_catalog_shops_on_shop_id"

  create_table "extra_props", force: true do |t|
    t.string   "name"
    t.string   "value"
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "extra_props", ["product_id"], name: "index_extra_props_on_product_id"

  create_table "photos", force: true do |t|
    t.string   "url"
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "photos", ["product_id"], name: "index_photos_on_product_id"

  create_table "prices", force: true do |t|
    t.float    "cost"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.string   "color"
    t.string   "article"
    t.string   "size"
    t.string   "category_path"
    t.string   "name"
    t.string   "description"
    t.string   "client_price"
    t.string   "state"
    t.string   "main_categories"
    t.string   "article2"
    t.string   "url"
    t.string   "photo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shops", force: true do |t|
    t.string   "name"
    t.string   "url"
    t.string   "xpath"
    t.string   "host"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
