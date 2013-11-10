class Api::LinesController < ApplicationController
  def show
    render json: Line.find(params[:id])
  end

  def search
    search = LineSearch.new(params[:term])
    if search.valid?
      render json: search.results, root: :results
    else
      render json: { errors: search.errors }
    end
  end

  def random
    render :json => Line.random
  end
end
