class Sale < ApplicationRecord
  belongs_to :movie
  belongs_to :report, optional: true
end
