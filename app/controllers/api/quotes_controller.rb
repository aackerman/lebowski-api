class Api::QuotesController < ApplicationController
  def show
    render json: Quote.find(params[:id])
  end

  def random
    render :json => Quote.random
  end
end
