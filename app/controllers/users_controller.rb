class UsersController < ApplicationController

  skip_before_filter :require_login, only: [:new, :create]
  
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      auto_login(@user)
      redirect_to root_path
    else
      render :new
    end
  end

  def user_params
      params.require(:user).permit(:email, :password, :password_confirmation)
  end
end