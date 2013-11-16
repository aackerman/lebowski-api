class Search
  include ActiveModel::Validations

  attr_reader :results
  attr_reader :term

  validates :term, presence: true
  validate  :has_results

  def initialize(term)
    @term    = term
    @results = search
  end

  def search
    raise "Not implemented"
  end

  def has_results
    unless @results.any?
      errors.add(:results, 'No results')
    end
  end
end
