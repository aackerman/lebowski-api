class QuoteSerializer < ActiveModel::Serializer
  attributes :id
  has_many :lines
end
