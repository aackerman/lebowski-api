require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(:default, Rails.env)

module LebowskiApi
  class Application < Rails::Application
    config.secret_key_base = 'beepboop'
    config.middleware.use Rack::Deflater
    config.exceptions_app = self.routes
  end
end
