class Line < ActiveRecord::Base
  include PgSearch
  pg_search_scope :search, against: :text
  belongs_to :character
  has_and_belongs_to_many :quotes

  def self.random
    order('random()').first
  end
end
