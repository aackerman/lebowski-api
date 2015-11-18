class LineSearch < Search
  def search
    Line.search(@term)
  end

  def to_text
    if results.size > 0
      results.map(&:to_text).join("\n\n")
    else
      'Unable to find matching lines'
    end
  end
end
