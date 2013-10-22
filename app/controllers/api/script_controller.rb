class Api::ScriptController < ApplicationController
  def show
    render json: Line.all, root: :script
  end
end
