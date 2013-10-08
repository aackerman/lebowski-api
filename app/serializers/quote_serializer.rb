class QuoteSerializer < ActiveModel::Serializer
  attributes :id
  has_many :lines

  def lines
    object.lines.includes(:character, :quote).order("id ASC")
  end
end
