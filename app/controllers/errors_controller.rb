class ErrorsController < ApplicationController
  def not_found
    render :json => { status: "Error", message: "Route does not exist" }, :status => 404
  end

  def exception
    render :json => { status: "Error", message: "A general error has occured and we will look into it." }, :status => 500
  end
end
