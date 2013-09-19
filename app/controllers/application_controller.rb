class ApplicationController < ActionController::API

  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

  def redirect
    redirect_to api_quotes_random_url
  end

  protected

  def record_not_found(error)
    klass = error_class(error)
    render json: {
      error: klass,
      description: error.message
    }
  end

  def error_class(e)
    e.class.to_s.split('::').last
  end
end
