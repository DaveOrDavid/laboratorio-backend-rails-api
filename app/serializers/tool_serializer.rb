class ToolSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :editable
  belongs_to :user

  def editable
    scope == object.user
  end
end
