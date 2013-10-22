class Api::ScriptController < ApplicationController
  def show
    expires_in 1.year, public: true
    @script = Line.includes(:character, :quote).to_a
    render json: @script if stale? @script
  end
end
