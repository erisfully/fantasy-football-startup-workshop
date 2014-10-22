class League < ActiveRecord::Base

  has_many :league_members
  has_many :members, through: :league_members
  has_many :fantasy_teams
end
