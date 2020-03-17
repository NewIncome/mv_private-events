module UsersHelper
  def logged_in?
    session[:id]
  end
end
