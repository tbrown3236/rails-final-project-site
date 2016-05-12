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

ActiveRecord::Schema.define(version: 20151201220356) do

  create_table "articles", force: :cascade do |t|
    t.string   "title"
    t.string   "author"
    t.datetime "published_date"
    t.boolean  "published"
    t.text     "content"
    t.string   "thumbnail"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "blog_comments", force: :cascade do |t|
    t.string   "title"
    t.string   "author"
    t.text     "content"
    t.datetime "published_date"
    t.integer  "rating"
    t.integer  "blog_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "avatar_image"
  end

  add_index "blog_comments", ["blog_id"], name: "index_blog_comments_on_blog_id"

  create_table "blogs", force: :cascade do |t|
    t.string   "author"
    t.string   "title"
    t.text     "content"
    t.datetime "published_date"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string   "author"
    t.text     "content"
    t.integer  "rating"
    t.integer  "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "comments", ["product_id"], name: "index_comments_on_product_id"

  create_table "newsletters", force: :cascade do |t|
    t.string   "title"
    t.string   "author"
    t.text     "content"
    t.datetime "publish_date"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "quantity"
    t.integer  "sell_price"
    t.integer  "cost_of_product"
    t.integer  "shipping_weight"
    t.string   "thumbnail"
    t.string   "picture"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "recipes", force: :cascade do |t|
    t.string   "name"
    t.string   "creator"
    t.text     "ingredients"
    t.text     "instructions"
    t.string   "thumbnail"
    t.string   "picture"
    t.datetime "last_cooked"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "calories"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.boolean  "administrator",          default: false
    t.string   "first"
    t.string   "last"
    t.boolean  "newsletter"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
