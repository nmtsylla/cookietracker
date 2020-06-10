class DescriptionSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :online_description
end
