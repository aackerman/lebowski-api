class LineSerializer < ActiveModel::Serializer
  attributes :text
  has_one :character
end
