class ErrorsController < ApplicationController
  def not_found
    render :json => { status: "Error", message: "Route does not exist" }
  end

  def exception
    render :json => { status: "Error", message: "A general error has occured and we will look into it." }
  end
end
