class Api::ScriptController < ApplicationController
  def show
    render json: Script.new(Line.includes(:character, :quote).to_a)
  end
end
