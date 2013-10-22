class Api::SearchController < ApplicationController
  def show
    lines = Line.search(params[:term]).joins(:quote)
    if lines.any?
      render json: lines.map(&:quote)
    else
      render json: Quote.random
    end
  end
end
