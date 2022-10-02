class ApplicationController < ActionController::Base
  helper_method :current_user

  private

  def current_user #Если переменная класса с пользователем не инициализирована и в сессии есть user_id,
    # то есть пользователь авторизован, тогда выполняем запрос к бд и ищем нашего юзера
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def redirect_with_alert
    redirect_to root_path, alert: "You don't have the rights to do this"
  end
end
