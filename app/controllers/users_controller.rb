class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    unless @user == current_user
      redirect_to :back, :alert => "Access denied."
    end
  end

  def sign_up_params
    params.require(:user).permit(:name, :address, :postal_code, :country, :contact_number, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:name, :address, :postal_code, :country, :contact_number, :email, :password, :password_confirmation, :current_password)
  end
end
