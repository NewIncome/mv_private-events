class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root
    else
      flash[:danger] = 'wrong'
      render :new
    end
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def login; end

  def backlog
    @user = User.find_by(email: params[:session][:email])
    if @user.nil?
      flash.now[:danger] = "User doesn't exist"
      render :login
    else
      flash[:success] = 'logged in'
      session[:id] = @user.id
      redirect_to @user
    end
  end

  def user_params
    params.require(:user).permit(
      :username,
      :password,
      :password_confirmation,
      :email
    )
  end
end
