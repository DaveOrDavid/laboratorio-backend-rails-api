class ApplianceSerializer < ActiveModel::Serializer
  attributes :id, :location, :part_number, :image_url
end
