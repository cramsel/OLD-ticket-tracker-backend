class Timeslot < ApplicationRecord
  belongs_to :movie
  has_many :sales
end
