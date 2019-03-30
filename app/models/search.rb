class Search
  include ActiveModel::Validations

  attr_reader :results
  attr_reader :term
  attr_reader :character

  def initialize(term = '', character = '')
    @term      = term   || ""
    @character = character
    @results   = search || []
  end

  def search; end
end
