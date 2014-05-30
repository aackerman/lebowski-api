class Script
  def to_json(*args)
    {
      script: Rails.cache.fetch(['script', 'to-json']) do
        Line.includes(:character, :quotes).order('id ASC').map do |l|
          LineSerializer.new(l, root: false)
        end
      end
    }.to_json
  end
end
