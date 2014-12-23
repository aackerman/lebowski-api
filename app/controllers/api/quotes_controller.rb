class Api::QuotesController < ApplicationController
  def show
    render json: QuoteSerializer.new(
      Quote.find(params[:id])
    ).as_json
  end

  def search
    render json: QuoteSerializer.new(
      QuoteSearch.new(params[:term]).results, root: :results
    ).as_json
  end

  def random
    render json: QuoteSerializer.new(
      Quote.random
    ).as_json
  end
end
