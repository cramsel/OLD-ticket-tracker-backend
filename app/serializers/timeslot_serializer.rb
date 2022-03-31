class TimeslotSerializer < ActiveModel::Serializer
  attributes :id, :movie_id, :theater_number, :time_slot

  belongs_to :movie
  belongs_to :report
  has_many :sales
end
