module ApplicationHelper
  def current_user
    @current_user ||= User.find_by(id: session[:id])
  end
end
