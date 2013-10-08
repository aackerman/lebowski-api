class Line < ActiveRecord::Base
  include PgSearch
  pg_search_scope :search, :against => :text
  belongs_to :character
  belongs_to :quote

  def self.random
    order('random()').first
  end
end
