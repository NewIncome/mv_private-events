class ApplicationController < ActionController::Base
  def logged_in_user?
    return nil unless session[:id].nil?

    flash[:danger] = "You need to be logged in to post new #{controller_name}"
    redirect_to login_path
  end
end
