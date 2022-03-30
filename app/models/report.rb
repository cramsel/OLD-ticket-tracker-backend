class Report < ApplicationRecord
  has_many :timeslots
  has_many :sales, through: :timeslots
end
