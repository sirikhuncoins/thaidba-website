<<<<<<< HEAD
module DevisePermittedParameters
  extend ActiveSupport::Concern

  included do
    before_action :configure_permitted_parameters
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :email, :password, :address, :postal_code, :country, :contact_number) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:name, :email, :password, :current_password, :address, :postal_code, :country, :contact_number) }
  end

end

DeviseController.send :include, DevisePermittedParameters
=======
module DevisePermittedParameters
  extend ActiveSupport::Concern

  included do
    before_action :configure_permitted_parameters
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :email, :password, :address, :postal_code, :country, :contact_number) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:name, :email, :password, :current_password, :address, :postal_code, :country, :contact_number) }
  end

end

DeviseController.send :include, DevisePermittedParameters
>>>>>>> e1546abc0e72d495d69c06e1cb37d009f2b3ec39
