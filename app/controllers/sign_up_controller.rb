class SignUpController < ApplicationController
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to "/chatroom"
    else
      redirect_to signup_path(@user), status: 301
    end
  end

  def new
    @user ||= User.new
  end
  
  private
    def user_params
      params.require(:user).permit(:username, :password, :email)
    end
end
