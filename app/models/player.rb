class Player < ActiveRecord::Base
  belongs_to :team

  has_many :injuries

  has_many :stats

  has_many :fantasy_teams, through: :fantasy_team_players
end
