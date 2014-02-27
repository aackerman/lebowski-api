class Search
  include ActiveModel::Validations

  attr_reader :results
  attr_reader :term

  def initialize(term)
    @term    = term   || ""
    @results = search || []
  end

  def search; end
end
