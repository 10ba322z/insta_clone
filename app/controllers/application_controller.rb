class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  #ログイン後のpath
  # def after_sign_in_path_for(resource)
  #   mypage_root_path
  # end
  #
  # #ログアウト後のpath
  # def after_sign_out_path_for(resource)
  #   new_user_session_path
  # end

protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:firstname, :lastname, :username])
    devise_parameter_sanitizer.permit(:account_update, keys: [:firstname, :lastname, :username])
  end
end
