class Api::ScriptController < ApplicationController
  def show
    respond_to do |format|
      format.text { render plain: Script.new.as_text }
      format.json { render json: Script.new.as_json }
    end
  end
end
