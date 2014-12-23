class Api::SearchController < ApplicationController
  def show
    render json: QuoteSerilizer(
      QuoteSearch.new(params[:term]).results, root: :results
    ).as_json
  end
end
