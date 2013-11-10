class QuoteSearch < Search
  def search
    lines = Line.search(@term).includes(:quote).where(Line.arel_table[:quote_id].not_eq(nil))
    lines.map(&:quote).uniq
  end
end
