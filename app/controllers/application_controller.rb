class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_out_path_for(resource)
    new_user_session_path
  end

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:gender, :birth_year, :birth_month, :birth_day, :postal_code, :mail_magazine, :provider, :uid, :password])
    end
end
