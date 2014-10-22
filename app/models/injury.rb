class Injury < ActiveRecord::Base

  belongs_to :player

  belongs_to :start_week, class_name: "Week"
  belongs_to :end_week, class_name: "Week"

end
