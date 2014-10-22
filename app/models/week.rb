class Week < ActiveRecord::Base
  has_many :games

  has_many :injuries_started, class_name: "Injury", foreign_key: :start_week_id
  has_many :injuries_ended, class_name: "Injury", foreign_key: :end_week_id

  has_many :stats
end
