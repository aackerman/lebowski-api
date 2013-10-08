class Quote < ActiveRecord::Base
  has_many :lines

  def self.random
    order('random()').first
  end
end
