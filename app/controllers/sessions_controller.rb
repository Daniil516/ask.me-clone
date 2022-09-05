class SessionsController < ApplicationController
  def new
    #just to print registration menu with view
  end

  def create
    user_params = params.require(:session)
    user = User.find_by(email: user_params[:email])&.authenticate(user_params[:password])

    if user.present?
      session[:user_id] = user.id
      redirect_to root_path, notice: "You have successfully logged in to the site"
    else
      redirect_to new_session_path, notice: "Wrong email or password"
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to root_path, notice: "You have logged out of your account"
  end
end
