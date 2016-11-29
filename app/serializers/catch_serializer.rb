class CatchSerializer < ActiveModel::Serializer
  attributes :angler_name, :species, :weight, :length, :latitude, :longitude, :created_at
end
