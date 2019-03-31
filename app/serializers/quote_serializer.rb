class QuoteSerializer < ApplicationSerializer
  attributes :id
  has_many :lines

  def lines
    object.lines.includes(:character, :quotes).order(Arel.sql("id ASC"))
  end
end
