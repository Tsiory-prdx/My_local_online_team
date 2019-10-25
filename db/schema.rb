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

ActiveRecord::Schema.define(version: 2019_10_25_065323) do

  create_table "all_about_messages", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.string "zip_code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "comment_bis", force: :cascade do |t|
    t.text "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "comment_id"
    t.index ["comment_id"], name: "index_comment_bis_on_comment_id"
  end

  create_table "comments", force: :cascade do |t|
    t.text "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "gossip_id"
    t.index ["gossip_id"], name: "index_comments_on_gossip_id"
  end

  create_table "gossip_x_tags", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "gossip_id"
    t.integer "tag_id"
    t.index ["gossip_id"], name: "index_gossip_x_tags_on_gossip_id"
    t.index ["tag_id"], name: "index_gossip_x_tags_on_tag_id"
  end

  create_table "gossips", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_gossips_on_user_id"
  end

  create_table "like_with_gossip_and_comments", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "likes", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "gossip_id"
    t.integer "comment_id"
    t.index ["comment_id"], name: "index_likes_on_comment_id"
    t.index ["gossip_id"], name: "index_likes_on_gossip_id"
  end

  create_table "private_messages", force: :cascade do |t|
    t.text "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_private_messages_on_user_id"
  end

  create_table "receiving_messages", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.integer "private_message_id"
    t.index ["private_message_id"], name: "index_receiving_messages_on_private_message_id"
    t.index ["user_id"], name: "index_receiving_messages_on_user_id"
  end

  create_table "sending_messages", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.integer "private_message_id"
    t.index ["private_message_id"], name: "index_sending_messages_on_private_message_id"
    t.index ["user_id"], name: "index_sending_messages_on_user_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.text "description"
    t.string "email"
    t.integer "age"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "city_id"
    t.integer "private_message_id"
    t.index ["city_id"], name: "index_users_on_city_id"
    t.index ["private_message_id"], name: "index_users_on_private_message_id"
  end

  add_foreign_key "comment_bis", "comments"
  add_foreign_key "comments", "gossips"
  add_foreign_key "gossip_x_tags", "gossips"
  add_foreign_key "gossip_x_tags", "tags"
  add_foreign_key "gossips", "users"
  add_foreign_key "likes", "comments"
  add_foreign_key "likes", "gossips"
  add_foreign_key "private_messages", "users"
  add_foreign_key "receiving_messages", "private_messages"
  add_foreign_key "receiving_messages", "users"
  add_foreign_key "sending_messages", "private_messages"
  add_foreign_key "sending_messages", "users"
  add_foreign_key "users", "cities"
  add_foreign_key "users", "private_messages"
end
