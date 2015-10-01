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

ActiveRecord::Schema.define(version: 20151001141839) do

  create_table "assists", force: :cascade do |t|
    t.integer  "goal_id"
    t.integer  "player_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "assists", ["goal_id"], name: "index_assists_on_goal_id"
  add_index "assists", ["player_id"], name: "index_assists_on_player_id"

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

  create_table "players", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "surname"
    t.integer  "height"
    t.integer  "weight"
    t.string   "photo"
    t.integer  "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.string   "logo_path"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
