class Api::SearchController < ApplicationController
  def show
    lines = Line.search(params[:term]).includes(:quote).select {|l| l.quote.present? }
    if lines.any?
      render json: lines.first.quote
    else
      render json: Quote.random
    end
  end
end
