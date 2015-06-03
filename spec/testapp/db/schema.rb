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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20150603173110) do
=======
ActiveRecord::Schema.define(version: 20150603062227) do
>>>>>>> 6df417d... Adjusted accounts for to register through devise users. Spec test passed.

  create_table "subengine_accounts", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "owner_id"
<<<<<<< HEAD
    t.string   "subdomain"
=======
>>>>>>> 6df417d... Adjusted accounts for to register through devise users. Spec test passed.
  end

  add_index "subengine_accounts", ["subdomain"], name: "index_subengine_accounts_on_subdomain"

  create_table "subengine_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "subdomain"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "subengine_users", ["email", "subdomain"], name: "index_subengine_users_on_email_and_subdomain", unique: true
  add_index "subengine_users", ["reset_password_token"], name: "index_subengine_users_on_reset_password_token", unique: true

end
