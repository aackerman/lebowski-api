class Api::LinesController < ApplicationController
  def show
    render json: Line.find(params[:id])
  end

  def search
    render json: LineSearch.new(params[:term]).results, root: :results
  end

  def random
    render json: Line.random
  end
end
