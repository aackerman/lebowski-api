class ApplicationController < ActionController::Base
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
  rescue_from ActionController::RoutingError, with: :redirect_to_404

  def redirect
    redirect_to api_quotes_random_url
  end

  protected

  def redirect_to_404
    redirect_to '404'
  end

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
