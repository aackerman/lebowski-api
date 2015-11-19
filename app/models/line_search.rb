class LineSearch < Search
  def search
    if !@term.empty?
      query = Line.search(@term)
      if @character
        query = query.joins(:character).where(characters: { name: @character })
      end
    elsif @character
      query = Line.includes(:character).where(characters: { name: @character })
    end

    query
  end

  def to_text
    if results.size > 0
      results.map(&:to_text).join("\n\n")
    else
      'Unable to find matching lines'
    end
  end
end
