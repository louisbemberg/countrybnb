class ApplicationController < ActionController::Base
#method coming from gem devise, to make sure the user authenticates, before making any other action
  before_action :authenticate_user!

  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])

    # For additional in app/views/devise/registrations/edit.html.erb
    #devise_parameter_sanitizer.permit(:account_update, keys: [:username])
  end
end
