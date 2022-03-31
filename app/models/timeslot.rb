class Timeslot < ApplicationRecord
  belongs_to :movie
  belongs_to :report, optional: true
  has_many :sales
end
