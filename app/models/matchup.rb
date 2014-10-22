class Matchup < ActiveRecord::Base
  belongs_to :fantasy_home_team, class_name: "FantasyTeam"
  belongs_to :fantasy_away_team, class_name: "FantasyTeam"
  belongs_to :week
end
