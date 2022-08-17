class UsersController < ApplicationController
  before_action :set_user, only: %i[show edit update destroy]
  before_action :authorize_user, only: %i[edit update destroy]
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
    #just gives form for update
  end

  def update
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
    @questions = @user.questions
    @question = Question.new(user_id: @user.id)
  end

  private

  def authorize_user
    redirect_with_alert unless @user == current_user
  end

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :nickname, :email, :password, :password_confirmation, :header_color)
  end
end
