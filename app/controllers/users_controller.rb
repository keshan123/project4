class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome To Findr"
      redirect_to @user
    else
      render "new"
    end
  end

  def show

  end

  private

  def user_params
    params.require(:user).permit(:name,:email, :password, :password_confirmation)
  end
end