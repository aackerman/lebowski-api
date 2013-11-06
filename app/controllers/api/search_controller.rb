class Api::SearchController < ApplicationController
  def show
    search = Search.new(params[:term])
    if search.valid?
      render json: search.results, root: :results
    else
      render json: { errors: search.errors }
    end
  end
end
