class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  layout 'application'

  #Overwriting the sign_out redirect path method
  def after_sign_out_path_for(resource)
    root_path
  end

  #Overiding devise method :authenticate_user!
  def authenticate_user!
    unless user_signed_in?
      redirect_to user_omniauth_authorize_path(:github)
    end
  end

end
