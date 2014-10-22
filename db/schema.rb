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

ActiveRecord::Schema.define(version: 20141022222236) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "fantasy_team_players", force: true do |t|
    t.integer  "player_id"
    t.integer  "fantasy_team_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "fantasy_team_players", ["fantasy_team_id"], name: "index_fantasy_team_players_on_fantasy_team_id", using: :btree
  add_index "fantasy_team_players", ["player_id"], name: "index_fantasy_team_players_on_player_id", using: :btree

  create_table "fantasy_teams", force: true do |t|
    t.integer  "member_id"
    t.integer  "league_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "fantasy_teams", ["league_id"], name: "index_fantasy_teams_on_league_id", using: :btree
  add_index "fantasy_teams", ["member_id"], name: "index_fantasy_teams_on_member_id", using: :btree

  create_table "games", force: true do |t|
    t.integer  "home_team_id"
    t.integer  "away_team_id"
    t.integer  "winner_id"
    t.integer  "home_team_score"
    t.integer  "away_team_score"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "week_id"
  end

  create_table "injuries", force: true do |t|
    t.integer  "player_id"
    t.integer  "start_week_id"
    t.integer  "end_week_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "league_members", force: true do |t|
    t.integer  "member_id"
    t.integer  "league_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "league_members", ["league_id"], name: "index_league_members_on_league_id", using: :btree
  add_index "league_members", ["member_id"], name: "index_league_members_on_member_id", using: :btree

  create_table "leagues", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "matchups", force: true do |t|
    t.integer  "fantasy_home_team_id"
    t.integer  "fantasy_away_team_id"
    t.integer  "week_id"
    t.integer  "fantasy_home_team_score"
    t.integer  "fantasy_away_team_score"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "matchups", ["fantasy_away_team_id"], name: "index_matchups_on_fantasy_away_team_id", using: :btree
  add_index "matchups", ["fantasy_home_team_id"], name: "index_matchups_on_fantasy_home_team_id", using: :btree
  add_index "matchups", ["week_id"], name: "index_matchups_on_week_id", using: :btree

  create_table "members", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "player_points", force: true do |t|
    t.integer  "week_id"
    t.integer  "player_id"
    t.integer  "score"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "player_points", ["player_id"], name: "index_player_points_on_player_id", using: :btree
  add_index "player_points", ["week_id"], name: "index_player_points_on_week_id", using: :btree

  create_table "players", force: true do |t|
    t.string   "name"
    t.string   "position"
    t.integer  "team_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "starters", force: true do |t|
    t.integer  "player_id"
    t.integer  "fantasy_team_id"
    t.integer  "week_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "starters", ["fantasy_team_id"], name: "index_starters_on_fantasy_team_id", using: :btree
  add_index "starters", ["player_id"], name: "index_starters_on_player_id", using: :btree
  add_index "starters", ["week_id"], name: "index_starters_on_week_id", using: :btree

  create_table "stats", force: true do |t|
    t.integer  "yards"
    t.integer  "week_id"
    t.integer  "player_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "stats", ["player_id"], name: "index_stats_on_player_id", using: :btree
  add_index "stats", ["week_id"], name: "index_stats_on_week_id", using: :btree

  create_table "teams", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "weeks", force: true do |t|
    t.integer  "week_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
