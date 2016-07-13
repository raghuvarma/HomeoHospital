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

ActiveRecord::Schema.define(version: 20160713182827) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "applications", force: :cascade do |t|
    t.string   "name"
    t.string   "relation_name"
    t.text     "address"
    t.text     "details"
    t.boolean  "is_doctor"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "preceptions", force: :cascade do |t|
    t.text     "problem"
    t.text     "medicine"
    t.integer  "application_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "doctor_name"
  end

  add_index "preceptions", ["application_id"], name: "index_preceptions_on_application_id", using: :btree

  create_table "problems", force: :cascade do |t|
    t.string   "problem_type"
    t.text     "description"
    t.integer  "application_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "problems", ["application_id"], name: "index_problems_on_application_id", using: :btree

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "tokens", force: :cascade do |t|
    t.string   "name"
    t.string   "relation_name"
    t.boolean  "is_new_application"
    t.integer  "application_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "token_id"
    t.boolean  "is_active"
    t.string   "doctor"
  end

  add_index "tokens", ["application_id"], name: "index_tokens_on_application_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.integer  "role_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["role_id"], name: "index_users_on_role_id", using: :btree

  add_foreign_key "preceptions", "applications"
  add_foreign_key "problems", "applications"
  add_foreign_key "tokens", "applications"
  add_foreign_key "users", "roles"
end
