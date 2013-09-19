class ApplicationController < ActionController::API

  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

  def redirect
    redirect_to api_quotes_random_url
  end

  protected

  def record_not_found(error)
    render json: { error: error_class(error), description: error.message }
  end

  def error_class(e)
    e.class.to_s.split('::').last
  end
end
