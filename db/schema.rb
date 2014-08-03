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

ActiveRecord::Schema.define(version: 20140803213952) do

  create_table "accounts", force: true do |t|
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
  end

  add_index "accounts", ["email"], name: "index_accounts_on_email", unique: true
  add_index "accounts", ["reset_password_token"], name: "index_accounts_on_reset_password_token", unique: true

  create_table "business_dashes", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "business_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "businesses", force: true do |t|
    t.string   "legalName"
    t.integer  "address"
    t.string   "email"
    t.string   "faxNumber"
    t.string   "telephone"
    t.string   "taxId"
    t.integer  "businessCategory"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employees", force: true do |t|
    t.integer  "business_id"
    t.integer  "person_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "messages", force: true do |t|
    t.string   "title"
    t.text     "body"
    t.integer  "posted_by"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", force: true do |t|
    t.string   "givenName"
    t.string   "familyName"
    t.string   "additionalName"
    t.integer  "address_id"
    t.date     "birthDate"
    t.string   "email"
    t.string   "faxNumber"
    t.string   "gender"
    t.string   "honorificPrefix"
    t.string   "honorificSuffix"
    t.integer  "nationality_id"
    t.string   "telephone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "postal_addresses", force: true do |t|
    t.integer  "addressCountry_id"
    t.string   "addressLocality"
    t.string   "addressRegion"
    t.string   "postalCode"
    t.string   "streetAddress"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rules", force: true do |t|
    t.string   "resource_type"
    t.integer  "resource_id"
    t.string   "action"
    t.string   "permittee_type"
    t.integer  "permittee_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
