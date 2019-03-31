class Api::SearchController < ApplicationController
  def show
    respond_to do |format|
      qs = QuoteSearch.new(params[:term])
      format.text { render plain: qs.to_text }
      format.json { render json: qs.results, root: :results }
    end
  end
end
