class Stat < ActiveRecord::Base
  belongs_to :week
  belongs_to :player
end
