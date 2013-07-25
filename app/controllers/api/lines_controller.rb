class Api::LinesController < ApplicationController

  def show
    @line = Line.where(id: params[:id]).first
    if @line
      render json: @line
    else
      render :json => { status: "Error", message: "Line does not exist" }
    end
  end

end
