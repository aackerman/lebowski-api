class Api::ScriptController < ApplicationController
  def show
    render json: Script.new
  end
end
