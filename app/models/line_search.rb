class LineSearch < Search
  def search
    Line.search(@term)
  end

  def to_text
    if results
      results.map(&:to_text).join("\n\n")
    else
      ''
    end
  end
end
