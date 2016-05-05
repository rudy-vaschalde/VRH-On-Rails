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

ActiveRecord::Schema.define(version: 20160505152006) do

  create_table "admins", force: :cascade do |t|
    t.string   "email",              default: "", null: false
    t.string   "encrypted_password", default: "", null: false
    t.integer  "sign_in_count",      default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "failed_attempts",    default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true

  create_table "articles", force: :cascade do |t|
    t.string   "title"
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "article_image_file_name"
    t.string   "article_image_content_type"
    t.integer  "article_image_file_size"
    t.datetime "article_image_updated_at"
  end

  add_index "articles", ["user_id"], name: "index_articles_on_user_id"

  create_table "championships", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "games", force: :cascade do |t|
    t.datetime "match_day"
    t.boolean  "overtime"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "home_team_id"
    t.integer  "visitor_team_id"
  end

  add_index "games", ["home_team_id"], name: "index_games_on_home_team_id"
  add_index "games", ["visitor_team_id"], name: "index_games_on_visitor_team_id"

  create_table "goals", force: :cascade do |t|
    t.integer  "game_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "scorer_id"
    t.integer  "passer_id"
    t.integer  "team_id"
  end

  add_index "goals", ["game_id"], name: "index_goals_on_game_id"
  add_index "goals", ["passer_id"], name: "index_goals_on_passer_id"
  add_index "goals", ["scorer_id"], name: "index_goals_on_scorer_id"
  add_index "goals", ["team_id"], name: "index_goals_on_team_id"

  create_table "partners", force: :cascade do |t|
    t.string   "name"
    t.string   "adress"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
  end

  create_table "players", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "surname"
    t.integer  "height"
    t.integer  "weight"
    t.integer  "team_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.integer  "jersey"
    t.integer  "position"
  end

  add_index "players", ["team_id"], name: "index_players_on_team_id"

  create_table "ranks", force: :cascade do |t|
    t.integer  "win",        default: 0
    t.integer  "loss",       default: 0
    t.integer  "tie",        default: 0
    t.integer  "win_ot",     default: 0
    t.integer  "loss_ot",    default: 0
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "season_id"
    t.integer  "team_id"
  end

  add_index "ranks", ["season_id"], name: "index_ranks_on_season_id"
  add_index "ranks", ["team_id"], name: "index_ranks_on_team_id"

  create_table "seasons", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "championship_id"
  end

  add_index "seasons", ["championship_id"], name: "index_seasons_on_championship_id"

  create_table "teams", force: :cascade do |t|
    t.string   "name"
    t.string   "city"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "championship_id"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.string   "team_photo_file_name"
    t.string   "team_photo_content_type"
    t.integer  "team_photo_file_size"
    t.datetime "team_photo_updated_at"
  end

  add_index "teams", ["championship_id"], name: "index_teams_on_championship_id"

  create_table "users", force: :cascade do |t|
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

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
