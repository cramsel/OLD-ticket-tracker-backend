class Sale < ApplicationRecord
  belongs_to :timeslot
  belongs_to :report, optional: true
end
