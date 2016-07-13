class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

    def configure_permitted_parameters
        # devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :email, :password, :address, :postal_code, :country, :contact_number) }
        # devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:name, :email, :password, :current_password, :address, :postal_code, :country, :contact_number) }
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email, :password, :address, :postal_code, :country, :contact_number])
        devise_parameter_sanitizer.permit(:account_update, keys: [:name, :email, :password, :current_password, :address, :postal_code, :country, :contact_number])
    end
end
