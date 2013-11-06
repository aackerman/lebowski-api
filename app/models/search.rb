class Search
  include ActiveModel::Validations

  attr_reader :results
  attr_reader :term

  validates :term, presence: true
  validate  :has_results

  def initialize(term)
    @term = term
    lines = Line.search(@term).includes(:quote).where(Line.arel_table[:quote_id].not_eq(nil))
    @results = lines.map(&:quote).uniq
  end

  def has_results
    unless @results.any?
      errors.add(:results, 'No results')
    end
  end
end
