class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :runtime, :summary, :poster_url

  has_many :timeslots
end
