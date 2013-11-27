class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController

  def github

    @user = User.find_or_create_github_auth(request.env["omniauth.auth"])
    unless @user.valid?
      set_flash_message(:notice, :success, :kind => "Github")
      return redirect_to :root
    end

    sign_in_and_redirect @user, :event => :authentication

  end

end