module UsersHelper
  def display_nickname
    "@#{current_user.nickname}"
  end
end
