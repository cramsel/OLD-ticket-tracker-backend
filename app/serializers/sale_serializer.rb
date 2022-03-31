class SaleSerializer < ActiveModel::Serializer
  attributes :id, :tickets_sold, :timeslot_id

  belongs_to :timeslot
end
