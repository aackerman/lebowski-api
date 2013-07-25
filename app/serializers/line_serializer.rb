class LineSerializer < ActiveModel::Serializer
  attributes :text, :id
  has_one :character
end
