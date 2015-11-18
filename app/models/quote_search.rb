class QuoteSearch < Search
  def search
    Line.search(@term).includes(:quotes).map(&:quotes).flatten.uniq
  end

  def to_text
    if results.size > 0
      results.map(&:to_text).join("\n\n\n\n")
    else
      'Unable to find matching quote'
    end
  end
end
