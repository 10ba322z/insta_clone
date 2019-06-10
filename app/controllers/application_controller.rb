class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource)
    '/show'
  end
end
