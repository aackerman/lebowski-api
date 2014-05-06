class QuoteSearch < Search
  def search
    lines = Line.search(@term).joins(:quotes)
    if line = lines.sample
      line.quotes.sample
    else
      []
    end
  end
end
