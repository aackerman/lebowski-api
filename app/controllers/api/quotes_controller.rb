class Api::QuotesController < ApplicationController
  def show
    respond_to do |format|
      quote = Quote.find(params[:id])
      format.text { render text: quote.to_text }
      format.json { render json: quote, root: :quote }
    end
  end

  def search
    respond_to do |format|
      qs = QuoteSearch.new(params[:term])
      format.text { render text: qs.to_text }
      format.json { render json: qs.results, root: :results }
    end
  end

  def random
    respond_to do |format|
      quote = Quote.random
      format.text { render text: quote.to_text }
      format.json { render json: quote, root: :quote }
    end
  end
end
