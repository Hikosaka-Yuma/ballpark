class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    #debugger
    if @user.save
    redirect_to root_path, success: '登録が完了しました'
    else
    flash.now[:danger] = "Error!再入力して下さい！"
    render :new
    end
  end
  
  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end