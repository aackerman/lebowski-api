class Api::SearchController < ApplicationController
  def show
    @searches = Line.search(params[:term]).joins(:quote).includes(:character, :quote).map(&:quote)
    render json: @searches, root: :searches
  end
end
