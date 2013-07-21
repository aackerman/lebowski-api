class Character < ActiveRecord::Base
  has_one :actor
  has_many :lines
end
