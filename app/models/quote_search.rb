class QuoteSearch < Search
  def search
    lines = Line.search(@term).joins(:quotes)
    if line = lines.sample
      line.quotes.sample
    else
      []
    end
  end

  def to_text
    if results
      results.map(&:to_text).join("\n\n")
    else
      ''
    end
  end
end
