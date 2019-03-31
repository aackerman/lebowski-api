class Script
  def as_json
    { script: lines }
  end

  def as_text
    lines.map {|l| "#{l[:character][:name]}\n#{l[:text]}" }.join "\n\n"
  end

  private

  def lines
    Rails.cache.fetch(['script', 'to-json']) do
      Line.includes(:character, :quotes).order(Arel.sql('id ASC')).map { |l|
        LineSerializer.new(l, root: false)
      }.as_json
    end
  end
end
