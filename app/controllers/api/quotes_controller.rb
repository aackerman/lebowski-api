class Api::QuotesController < ApplicationController
  def show
    render json: Quote.find(params[:id]), root: :quote
  end

  def search
    render json: QuoteSearch.new(params[:term]).results, root: :results
  end

  def random
    render json: Quote.random
  end
end
