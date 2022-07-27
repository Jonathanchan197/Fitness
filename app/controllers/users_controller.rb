class UsersController < ApplicationController
  before_action :check_for_admin, :only => [:index]
  before_action :check_for_login
  
  def index
    @users = User.all
  end
  
  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render :new
    end
  end

  def edit 
    if params[:id].to_i == @current_user.id 
      @user = User.find params[:id] 
    else 
      redirect_to user_path
    end
  end

  def update
    user = User.find params[:id]
    user.update user_params
    redirect_to user
  end

  def show
    @user = User.find params[:id]
  end

  
  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end