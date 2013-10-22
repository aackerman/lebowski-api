class Api::ScriptController < ApplicationController
  def show
    render json: Line.includes(:character, :quote).to_a, root: :script
  end
end
