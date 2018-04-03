class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

private

  def require_login
    if current_user
      redirect_to website_path

    end
  end

end
