class Api::LinesController < ApplicationController
  def show
    render json: LineSerializer(
      Line.find(params[:id])
    ).as_json
  end

  def search
    render json: LineSerializer(
      LineSearch.new(params[:term]).results, root: :results
    ).as_json
  end

  def random
    render json: LineSerializer(
      Line.random
    ).as_json
  end
end
