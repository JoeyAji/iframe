class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  config.force_ssl = true
end
