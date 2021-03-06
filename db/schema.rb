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

ActiveRecord::Schema.define(version: 2018_10_02_093045) do

  create_table "booking_details", primary_key: "detail_id", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.date "checkin"
    t.date "checkout"
    t.decimal "amount", precision: 8, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "booking_id"
    t.bigint "room_id"
    t.string "name"
    t.string "email"
    t.integer "occupancy"
    t.index ["booking_id"], name: "index_booking_details_on_booking_id"
    t.index ["room_id"], name: "index_booking_details_on_room_id"
  end

  create_table "bookings", primary_key: "booking_id", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "amount", precision: 8, scale: 2
  end

  create_table "groups", primary_key: "group_id", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hotels", primary_key: "hotel_id", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "Address"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "group_id"
    t.string "contact"
    t.index ["group_id"], name: "index_hotels_on_group_id"
  end

  create_table "payments", primary_key: "transaction_id", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.decimal "amount_paid", precision: 8, scale: 2
    t.string "paid_by"
    t.string "paid_by_contact"
    t.string "payment_mode"
    t.date "date_paid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "booking_ref"
    t.index ["booking_ref"], name: "index_payments_on_booking_ref"
  end

  create_table "roles", primary_key: "role_id", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "room_types", primary_key: "room_type_id", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "charge", precision: 11, scale: 2
    t.integer "occupancy"
    t.integer "beds"
    t.integer "baths"
    t.string "description"
    t.bigint "hotel_id"
    t.index ["hotel_id"], name: "index_room_types_on_hotel_id"
  end

  create_table "rooms", primary_key: "room_id", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "status", default: "Vacant"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "hotel_id"
    t.bigint "room_type_id"
    t.string "room_number"
    t.index ["hotel_id"], name: "index_rooms_on_hotel_id"
    t.index ["room_type_id"], name: "index_rooms_on_room_type_id"
  end

  create_table "users", primary_key: "user_id", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "first_name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "position"
  end

  add_foreign_key "hotels", "groups", primary_key: "group_id"
  add_foreign_key "payments", "bookings", column: "booking_ref", primary_key: "booking_id"
  add_foreign_key "rooms", "hotels", primary_key: "hotel_id"
  add_foreign_key "rooms", "room_types", primary_key: "room_type_id"
end
