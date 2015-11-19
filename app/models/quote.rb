class Quote < ActiveRecord::Base
  has_and_belongs_to_many :lines
  has_many :characters, through: :lines

  def self.random(character)
    if character
      includes(:characters).where(characters: { name: character }).order('random()').first
    else
      order('random()').first
    end
  end

  def to_text
    lines.map(&:to_text).join("\n\n")
  end
end
