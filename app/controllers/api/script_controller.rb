class Api::ScriptController < ApplicationController
  def show
    render json: Script.new.as_json
  end
end
