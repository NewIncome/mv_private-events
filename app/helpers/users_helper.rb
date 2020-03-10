module UsersHelper
  private
  
  def logged_in?
    return nil unless session[:id].nil?
    flash[:danger] = 'You need to be logged in to post new events.'
    redirect_to login_path
  end
end
