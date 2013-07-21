class ApplicationController < ActionController::API
  def redirect
    redirect_to api_quotes_random_url
  end
end
