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

ActiveRecord::Schema.define(version: 2019_01_23_093640) do

  create_table "brands", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.integer "depth", null: false
    t.integer "parent_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "colors", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "credit_cards", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "number", null: false
    t.integer "expire_month", null: false
    t.integer "expire_day", null: false
    t.integer "security_code", null: false
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_credit_cards_on_user_id"
  end

  create_table "fav_shops", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "shop_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shop_id"], name: "index_fav_shops_on_shop_id"
    t.index ["user_id"], name: "index_fav_shops_on_user_id"
  end

  create_table "fav_stocks", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "stock_id"
    t.index ["stock_id"], name: "index_fav_stocks_on_stock_id"
    t.index ["user_id"], name: "index_fav_stocks_on_user_id"
  end

  create_table "images", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "image", null: false
    t.bigint "item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "color_id"
    t.text "discription"
    t.index ["color_id"], name: "index_images_on_color_id"
    t.index ["item_id"], name: "index_images_on_item_id"
  end

  create_table "impressions", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "impressionable_type"
    t.integer "impressionable_id"
    t.integer "user_id"
    t.string "controller_name"
    t.string "action_name"
    t.string "view_name"
    t.string "request_hash"
    t.string "ip_address"
    t.string "session_hash"
    t.text "message"
    t.text "referrer"
    t.text "params"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["controller_name", "action_name", "ip_address"], name: "controlleraction_ip_index"
    t.index ["controller_name", "action_name", "request_hash"], name: "controlleraction_request_index"
    t.index ["controller_name", "action_name", "session_hash"], name: "controlleraction_session_index"
    t.index ["impressionable_type", "impressionable_id", "ip_address"], name: "poly_ip_index"
    t.index ["impressionable_type", "impressionable_id", "params"], name: "poly_params_request_index", length: { params: 255 }
    t.index ["impressionable_type", "impressionable_id", "request_hash"], name: "poly_request_index"
    t.index ["impressionable_type", "impressionable_id", "session_hash"], name: "poly_session_index"
    t.index ["impressionable_type", "message", "impressionable_id"], name: "impressionable_type_message_index", length: { message: 255 }
    t.index ["user_id"], name: "index_impressions_on_user_id"
  end

  create_table "items", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.text "discription", null: false
    t.string "gender"
    t.integer "price", null: false
    t.string "material"
    t.string "origin"
    t.integer "delivery_days", null: false
    t.integer "wrapping", null: false
    t.bigint "shop_id"
    t.bigint "brand_id"
    t.bigint "parent_category_id"
    t.bigint "child_category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "impressions_count"
    t.decimal "coupon", precision: 2, scale: 1
    t.index ["brand_id"], name: "index_items_on_brand_id"
    t.index ["child_category_id"], name: "index_items_on_child_category_id"
    t.index ["parent_category_id"], name: "index_items_on_parent_category_id"
    t.index ["shop_id"], name: "index_items_on_shop_id"
  end

  create_table "markets", primary_key: "prefecture", id: :string, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "count", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "total", default: 0, null: false
    t.integer "items", default: 0, null: false
  end

  create_table "shippings", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "genre", null: false
    t.string "name", null: false
    t.integer "postal_code", null: false
    t.string "prefecture", null: false
    t.string "address1", null: false
    t.string "address2"
    t.text "phonenumber", null: false
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_shippings_on_user_id"
  end

  create_table "shops", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.integer "impressions_count"
    t.index ["user_id"], name: "index_shops_on_user_id"
  end

  create_table "sizes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "size", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stocks", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "item_id"
    t.bigint "size_id"
    t.bigint "color_id"
    t.integer "count", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
    t.integer "row_order"
    t.bigint "shop_id"
    t.index ["color_id"], name: "index_stocks_on_color_id"
    t.index ["item_id"], name: "index_stocks_on_item_id"
    t.index ["shop_id"], name: "index_stocks_on_shop_id"
    t.index ["size_id"], name: "index_stocks_on_size_id"
  end

  create_table "trades", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "status", null: false
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "stock_id"
    t.integer "count", null: false
    t.integer "total", null: false
    t.index ["stock_id"], name: "index_trades_on_stock_id"
    t.index ["user_id"], name: "index_trades_on_user_id"
  end

  create_table "user_details", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "family_name", null: false
    t.string "first_name", null: false
    t.string "family_name_kana", null: false
    t.string "first_name_kana", null: false
    t.string "prefecture", null: false
    t.string "address1", null: false
    t.string "address2"
    t.text "phonenumber", null: false
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "gender"
    t.string "birth_year"
    t.string "birth_month"
    t.string "birth_day"
    t.integer "postal_code", null: false
    t.index ["user_id"], name: "index_user_details_on_user_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "gender"
    t.integer "birth_year"
    t.integer "birth_month"
    t.integer "birth_day"
    t.integer "postal_code", null: false
    t.integer "mail_magazine", null: false
    t.string "provider"
    t.string "uid"
    t.string "prefecture"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "credit_cards", "users"
  add_foreign_key "fav_shops", "shops"
  add_foreign_key "fav_shops", "users"
  add_foreign_key "fav_stocks", "stocks"
  add_foreign_key "fav_stocks", "users"
  add_foreign_key "images", "colors"
  add_foreign_key "images", "items"
  add_foreign_key "items", "brands"
  add_foreign_key "items", "categories", column: "child_category_id"
  add_foreign_key "items", "categories", column: "parent_category_id"
  add_foreign_key "items", "shops"
  add_foreign_key "shippings", "users"
  add_foreign_key "shops", "users"
  add_foreign_key "stocks", "colors"
  add_foreign_key "stocks", "items"
  add_foreign_key "stocks", "shops"
  add_foreign_key "stocks", "sizes"
  add_foreign_key "trades", "stocks"
  add_foreign_key "trades", "users"
  add_foreign_key "user_details", "users"
end
