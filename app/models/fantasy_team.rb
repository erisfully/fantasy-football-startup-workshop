class FantasyTeam < ActiveRecord::Base
  belongs_to :member
  belongs_to :league
  has_many :players, through: :fantasy_team_players
  has_many :fantasy_home_team_matchups, class_name: "Matchup", foreign_key: :fantasy_home_team_id
  has_many :fantasy_away_team_matchups, class_name: "Matchup", foreign_key: :fantasy_away_team_id




end
