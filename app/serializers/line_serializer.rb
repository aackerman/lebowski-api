class LineSerializer < ApplicationSerializer
  attributes :id, :text
  has_one :character
  has_many :quotes, embed: :ids
end
