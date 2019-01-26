# frozen_string_literal: true

class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController

  def google_oauth2
    callback_for(:google)
  end

  def failure
    redirect_to new_user_registration_path
  end

  def callback_for(provider)
    @user = User.find_omniauth(request.env["omniauth.auth"])
    if @user
      sign_in_and_redirect @user, event: :authentication
      set_flash_message(:notice, :success, kind: "#{provider}") if is_navigational_format?
    else
      data = request.env["omniauth.auth"]
      @user = User.new(email: data["info"]["email"], password: Devise.friendly_token[0,20], provider: data["provider"], uid: data["uid"])
      render action: "/registrations/#{provider}"
    end
  end
  # You should configure your model like this:
  # devise :omniauthable, omniauth_providers: [:twitter]

  # You should also create an action method in this controller like this:
  # def twitter
  # end

  # More info at:
  # https://github.com/plataformatec/devise#omniauth

  # GET|POST /resource/auth/twitter
  # def passthru
  #   super
  # end

  # GET|POST /users/auth/twitter/callback
  # def failure
  #   super
  # end

  # protected

  # The path used when OmniAuth fails
  # def after_omniauth_failure_path_for(scope)
  #   super(scope)
  # end
end
