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
    render :json => Quote.includes(lines: [:character]).order('random()').limit(1).first
  end
end
