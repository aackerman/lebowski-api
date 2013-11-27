class Api::ScriptController < ApplicationController
  def show
    script = Rails.cache.fetch ['script', 'to-json'] do
      lines = Line.includes(:character, :quote).order('id ASC').map do |l|
        LineSerializer.new(l, root: false)
      end
      { script: lines }.to_json
    end
    render json: script
  end
end
