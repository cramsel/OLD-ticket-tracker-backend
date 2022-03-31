class ReportSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :timeslots
  has_many :sales, through: :timeslots
end
