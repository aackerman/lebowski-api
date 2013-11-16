class ApplicationController < ActionController::API

  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

  def redirect
    redirect_to api_quotes_random_url
  end

  protected

  def record_not_found(e)
    render json: {
      errors: [{
        error_class(e) => [e.message]
      }]
    }, status: 404
  end

  def error_class(e)
    e.class.to_s.split('::').last.to_sym
  end
end
