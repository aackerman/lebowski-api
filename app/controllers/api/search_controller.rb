class Api::SearchController < ApplicationController
  def show
    render json: QuoteSearch.new(params[:term]).results, root: :results
  end
end
