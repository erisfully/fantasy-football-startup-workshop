class PlayerPoint < ActiveRecord::Base
  belongs_to :week
  belongs_to :player
end
