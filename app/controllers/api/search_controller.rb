class Api::SearchController < ApplicationController
  def show
    @search = Line.search(params[:term]).joins(:quote).includes(:character, :quote).map(&:quote)
    render json: @search
  end
end
