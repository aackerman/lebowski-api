class Line < ActiveRecord::Base
  belongs_to :character
  belongs_to :quote
end
