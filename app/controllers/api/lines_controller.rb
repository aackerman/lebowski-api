class Api::LinesController < ApplicationController
  def show
    respond_to do |format|
      line = Line.find(params[:id])
      format.text { render text: line.to_text }
      format.json { render json: line }
    end
  end

  def search
    respond_to do |format|
      ls = LineSearch.new(params[:term])
      format.text { render text: ls.to_text }
      format.json { render json: ls.results, root: :results }
    end
  end

  def random
    respond_to do |format|
      line = Line.random
      format.text { render text: line.to_text }
      format.json { render json: line, root: :results }
    end
  end
end
