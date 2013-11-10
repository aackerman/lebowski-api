class LineSearch < Search
  def search
    Line.search(@term)
  end
end
