module ApplicationHelper
  def inclination(object_name, count)
    if count == 1
      object_name
    else
      object_name + "s"
    end
  end

  private

  def current_user #Если переменная класса с пользователем не инициализирована и в сессии есть user_id,
    # то есть пользователь авторизован, тогда выполняем запрос к бд и ищем нашего юзера
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end
end

