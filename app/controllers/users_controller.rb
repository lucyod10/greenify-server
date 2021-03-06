class UsersController < ApplicationController
  # blocks the user from seeing these pages unless they're logged in, except to create a user
  # Commented out for Development Mode
  before_action :authenticate_user, :except => [:create, :index, :show]

  def index
    users = User.all
    render :json => users
  end

  def show
    @user = User.find params[:id]
    @plants = @user.plants
    @bookings = @user.bookings
    render "show.json"
  end

  def new
  end

  def create
    user = User.new user_params

    if user.save
      redirect_to users_path
    else
    end
  end


  def loggedin_user
    render json: { :name => current_user.name, :is_seller => current_user.is_seller, :admin => current_user.admin, :id => current_user.id }
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
