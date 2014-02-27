class Script
  def self.to_json(*args)
    { 
      script: Rails.cache.fetch(['script', 'to-json']) do
        Line.includes(:character, :quote).order('id ASC').map do |l|
          LineSerializer.new(l, root: false)
        end
      end
    }.to_json
  end
end
