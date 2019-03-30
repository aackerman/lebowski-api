class Quote < ActiveRecord::Base
  has_and_belongs_to_many :lines
  has_many :characters, through: :lines

  def self.random(character)
    if character
      includes(:characters).where(characters: { name: character }).order(Arel.sql('random()')).first
    else
      order(Arel.sql('random()')).first
    end
  end

  def to_text
    lines.map(&:to_text).join("\n\n")
  end
end
