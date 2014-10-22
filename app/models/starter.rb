class Starter < ActiveRecord::Base
  has_many :players, through: :fantasy_team_players
  belongs_to :fantasy_team
  belongs_to :week
end
