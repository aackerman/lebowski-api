class Line < ActiveRecord::Base
  include PgSearch
  pg_search_scope :search, against: :text
  belongs_to :character
  has_and_belongs_to_many :quotes

  def self.random(character)
    if character
      includes(:character).where(characters: { name: character }).order('random()').first
    else
      order('random()').first
    end
  end

  def to_text
    "#{character.name}\n#{text}"
  end
end
