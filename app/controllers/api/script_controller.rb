class Api::ScriptController < ApplicationController
  def show
    render json: Script
  end
end
