class ErrorsController < ApplicationController
  def not_found
    render json: {
      errors: [{
        route: ['does not exist']
      }]
    }, status: 404
  end

  def exception
    render json: {
      errors: [{
        server: ['an uncaught exception']
      }]
    }, status: 500
  end
end
