class ApplianceSerializer < ActiveModel::Serializer
  attributes :id, :location, :part_number, :image_url, :editable
  belongs_to :user

  def editable
    scope == object.user
  end
end
