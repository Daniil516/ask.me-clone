class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path, notice: "You have successfully registered on AskMe"
    else
      flash.now[:alert] = "Something went wrong with your data"
      render :new
    end

  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      redirect_to root_path, notice: "You have successfully edited your data on AskMe"
    else
      flash.now[:alert] = "Something went wrong with your data edit"
      render :edit
    end

  end

  def destroy
    User.destroy_by(id: session[:user_id])
    session.delete(:user_id)

    redirect_to root_path, notice: "Your account has been deleted"
  end

  def show
    @user = User.find(params[:id])
    @questions = @user.questions
    @question = Question.new(user_id: @user.id)
  end

  private

  def user_params
    params.require(:user).permit(:name, :nickname, :email, :password, :password_confirmation, :header_color)
  end
end
