class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user_params = params.require(:user).permit(:name, :nickname, :email, :password, :password_confirmation)

    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path, notice: "You have successfully registered on AskMe"
    else
      flash.now[:alert] = "Something went wrong with your data"
      render :new
    end

  end
end
