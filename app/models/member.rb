class Member < ActiveRecord::Base

  has_many :league_members
  has_many :leagues, :through => :league_members
  has_many :fantasy_teams
end
