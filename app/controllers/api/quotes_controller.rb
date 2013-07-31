class Api::QuotesController < ApplicationController
  def show
    @quote = Quote.where(id: params[:id]).first
    if @quote
      render :json => @quote
    else
      render :json => { status: "Error", message: "Quote does not exist" }
    end
  end

  def random
    render :json => Quote.order('random()').first
  end
end
