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

ActiveRecord::Schema.define(version: 2019_11_18_222333) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.integer "resource_id"
    t.string "author_type"
    t.integer "author_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "country_mades", force: :cascade do |t|
    t.string "countryMade"
    t.integer "amount_from_country"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "fullName"
    t.string "emailAddress"
    t.integer "contactNumber"
    t.string "streetAddress"
    t.string "province"
    t.string "postalCode"
    t.string "username"
    t.string "password"
    t.integer "taxes_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["taxes_id"], name: "index_customers_on_taxes_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string "fullName"
    t.string "emailAddress"
    t.integer "contactNumber"
    t.string "streetAddress"
    t.string "province"
    t.string "postalCode"
    t.string "username"
    t.string "password"
    t.integer "taxes_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["taxes_id"], name: "index_employees_on_taxes_id"
  end

  create_table "logins", force: :cascade do |t|
    t.integer "customer_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_id"], name: "index_logins_on_customer_id"
  end

  create_table "orders", force: :cascade do |t|
    t.datetime "orderDate"
    t.integer "orderQuantity"
    t.decimal "subTotal"
    t.boolean "isDeliver"
    t.decimal "deliveryFee"
    t.decimal "total"
    t.integer "customer_id", null: false
    t.integer "employee_id", null: false
    t.integer "product_id", null: false
    t.integer "shipment_id", null: false
    t.integer "taxes_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_id"], name: "index_orders_on_customer_id"
    t.index ["employee_id"], name: "index_orders_on_employee_id"
    t.index ["product_id"], name: "index_orders_on_product_id"
    t.index ["shipment_id"], name: "index_orders_on_shipment_id"
    t.index ["taxes_id"], name: "index_orders_on_taxes_id"
  end

  create_table "payments", force: :cascade do |t|
    t.integer "paymentNo"
    t.string "paymentType"
    t.datetime "date"
    t.integer "amount"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "designation"
    t.text "description"
    t.decimal "price"
    t.date "stockDate"
    t.integer "regionMade_id"
    t.integer "provinceMade_id"
    t.integer "countryMade_id"
    t.integer "winery_id"
    t.integer "variety_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["countryMade_id"], name: "index_products_on_countryMade_id"
    t.index ["provinceMade_id"], name: "index_products_on_provinceMade_id"
    t.index ["regionMade_id"], name: "index_products_on_regionMade_id"
    t.index ["variety_id"], name: "index_products_on_variety_id"
    t.index ["winery_id"], name: "index_products_on_winery_id"
  end

  create_table "province_mades", force: :cascade do |t|
    t.string "provinceMade"
    t.integer "amount_from_province"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "region_mades", force: :cascade do |t|
    t.string "regionMade"
    t.integer "amount_from_region"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "shipments", force: :cascade do |t|
    t.datetime "shipmentDate"
    t.text "note"
    t.integer "customer_id", null: false
    t.integer "employee_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_id"], name: "index_shipments_on_customer_id"
    t.index ["employee_id"], name: "index_shipments_on_employee_id"
  end

  create_table "taxes", force: :cascade do |t|
    t.decimal "pst"
    t.decimal "gst"
    t.decimal "qst"
    t.decimal "hst"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "varieties", force: :cascade do |t|
    t.string "variety_name"
    t.integer "amount_of_variety"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "wineries", force: :cascade do |t|
    t.string "winery_name"
    t.integer "amount_from_winery"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "customers", "taxes", column: "taxes_id"
  add_foreign_key "employees", "taxes", column: "taxes_id"
  add_foreign_key "logins", "customers"
  add_foreign_key "orders", "customers"
  add_foreign_key "orders", "employees"
  add_foreign_key "orders", "products"
  add_foreign_key "orders", "shipments"
  add_foreign_key "orders", "taxes", column: "taxes_id"
  add_foreign_key "products", "varieties"
  add_foreign_key "shipments", "customers"
  add_foreign_key "shipments", "employees"
end
