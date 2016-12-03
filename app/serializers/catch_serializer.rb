class CatchSerializer < ActiveModel::Serializer
  attributes :angler_name, :species, :weight, :length, :latitude, :longitude, :created_at, :photo_url

  def photo_url
    object.photo.url
  end
end
