class Api::QuotesController < ApplicationController
  def show
    respond_to do |format|
      quote = Quote.find(params[:id])
      format.text {
        permalink = url_for({
          controller: 'api/quotes',
          action: 'show',
          id: quote.id,
          only_path: false,
          format: :txt
        })
        render plain: quote.to_text + "\n\n#{permalink}"
      }
      format.json { render json: quote, root: :quote }
    end
  end

  def search
    respond_to do |format|
      qs = QuoteSearch.new(params[:term], params[:character])
      format.text { render plain: qs.to_text }
      format.json { render json: qs.results, root: :results }
    end
  end

  def random
    respond_to do |format|
      quote = Quote.random(params[:character])
      format.text {
        permalink = url_for({
          controller: 'api/quotes',
          action: 'show',
          id: quote.id,
          only_path: false,
          format: :txt
        })
        render plain: quote.to_text + "\n\n#{permalink}"
      }
      format.json { render json: quote, root: :quote }
    end
  end
end
