class LineSerializer < ActiveModel::Serializer
  attributes :id, :text
  has_one :character
  has_one :quote, embed: :ids
end
