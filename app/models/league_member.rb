class LeagueMember < ActiveRecord::Base
  belongs_to :member
  belongs_to :league
end
