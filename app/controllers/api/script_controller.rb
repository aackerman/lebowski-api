class Api::ScriptController < ApplicationController
  def show
    expires_in 1.year, public: true
    render json: Line.includes(:character, :quote).to_a, root: :script
  end
end
