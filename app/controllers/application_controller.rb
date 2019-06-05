class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # signup時にnameも追加で許可する
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
