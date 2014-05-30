class Script
  def as_json
    { script: lines }
  end

  private

  def lines
    Rails.cache.fetch(['script', 'to-json']) do
      Line.includes(:character, :quotes).order('id ASC').map { |l|
        LineSerializer.new(l, root: false)
      }.as_json
    end
  end
end
