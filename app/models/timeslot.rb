class Timeslot < ApplicationRecord
  belongs_to :movie
  belongs_to :report
  has_many :sales
end
