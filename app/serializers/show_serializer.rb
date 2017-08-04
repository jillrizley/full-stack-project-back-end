class ShowSerializer < ActiveModel::Serializer
  attributes :id, :artist, :date, :start_time, :end_time, :venue
end
