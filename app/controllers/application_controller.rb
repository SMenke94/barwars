class ApplicationController < ActionController::Base
  before_action :current_location



    # protect_from_forgery
  # before_action :authenticate_user!

  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:photo])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:photo])
  end

  def current_location
    if cookies[:current_location]
      @current_location = JSON.parse(cookies[:current_location])
    else
      @current_location = [55.6760968, 12.5683372]
    end
  end
end
