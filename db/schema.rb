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

ActiveRecord::Schema.define(version: 20160211180354) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.integer  "post_id",                         default: 0
    t.string   "comment_author"
    t.string   "comment_author_email"
    t.string   "comment_author_url"
    t.string   "comment_author_IP"
    t.text     "comment_content"
    t.integer  "comment_karma",                   default: 0
    t.boolean  "comment_approved",                default: true
    t.string   "comment_agent"
    t.string   "comment_type",         limit: 20
    t.integer  "comment_parent"
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
  end

  create_table "posts", force: :cascade do |t|
    t.integer  "post_author",                default: 0
    t.datetime "post_date"
    t.text     "post_content"
    t.text     "post_title"
    t.string   "post_status",    limit: 20,  default: "publish"
    t.string   "comment_status", limit: 20,  default: "open"
    t.string   "post_password",  limit: 20
    t.string   "post_name",      limit: 200
    t.integer  "post_parent",                default: 0
    t.integer  "comment_count"
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
  end

end
