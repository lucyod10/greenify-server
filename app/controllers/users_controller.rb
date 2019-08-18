class UsersController < ApplicationController
  # blocks the user from seeing these pages unless they're logged in, except to create a user
  # Commented out for Development Mode
  # before_action :authenticate_user, :except => :create

  def index
    users = User.all
    render :json => users
  end

  def show
  end

  def new
  end

  def create
    user = User.new user_params

    if user.save
      redirect_to users_path
    else
      raise 'hell'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :admin, :is_seller)
  end
end
