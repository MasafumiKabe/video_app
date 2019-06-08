class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # signup時にnameも追加で許可する
  before_action :configure_permitted_parameters, if: :devise_controller?

  def require_user_logged_in
    unless user_signed_in?
      redirect_to root_url
    end
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
