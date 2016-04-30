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

ActiveRecord::Schema.define(version: 20160430135409) do

  create_table "comments", force: :cascade do |t|
    t.integer  "post_id"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "name"
    t.string   "title"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "microposts", force: :cascade do |t|
    t.text     "context"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "microposts", ["user_id", "created_at"], name: "index_microposts_on_user_id_and_created_at"
  add_index "microposts", ["user_id"], name: "index_microposts_on_user_id"

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.integer  "motivation_level"
    t.string   "how_long"
    t.text     "body"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.boolean  "omniauth"
  end

  create_table "workoutposts", force: :cascade do |t|
    t.string   "body_part"
    t.string   "duration"
    t.string   "name_of_workout"
    t.string   "description_of_workout"
    t.integer  "reps"
    t.integer  "sets"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "workouts", force: :cascade do |t|
    t.datetime "date"
    t.string   "workout"
    t.integer  "motivation_level"
    t.string   "length_lifting"
    t.string   "length_hitting_cardio"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

end
