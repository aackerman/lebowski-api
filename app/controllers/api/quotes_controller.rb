class Api::QuotesController < ApplicationController
  def show
    render json: Quote.find(params[:id])
  end

  def search
    search = QuoteSearch.new(params[:term])
    if search.valid?
      render json: search.results, root: :results
    else
      render json: { results: [] }
    end
  end

  def random
    render json: Quote.random
  end
end
