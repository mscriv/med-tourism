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

ActiveRecord::Schema.define(version: 20150315212017) do

  create_table "countries", force: true do |t|
    t.string   "name"
    t.text     "profile"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "doctors", force: true do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "address"
    t.string   "specialty"
    t.text     "bio"
    t.integer  "country_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "doctors", ["country_id"], name: "index_doctors_on_country_id"

  create_table "invoices", force: true do |t|
    t.date     "date"
    t.string   "name"
    t.string   "invoice_number"
    t.integer  "patient_id"
    t.integer  "doctor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "invoices", ["doctor_id"], name: "index_invoices_on_doctor_id"
  add_index "invoices", ["patient_id"], name: "index_invoices_on_patient_id"

  create_table "line_items", force: true do |t|
    t.string   "name"
    t.integer  "quantity"
    t.decimal  "unit_price"
    t.integer  "invoice_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "line_items", ["invoice_id"], name: "index_line_items_on_invoice_id"

  create_table "patients", force: true do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.integer  "zip_code"
    t.integer  "doctor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "patients", ["doctor_id"], name: "index_patients_on_doctor_id"

end
