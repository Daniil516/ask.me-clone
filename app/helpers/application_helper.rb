module ApplicationHelper
  def inclination(object_name, count)
    if count == 1
      object_name
    else
      object_name + "s"
    end
  end
end

