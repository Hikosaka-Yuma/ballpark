class WatchingsController < ApplicationController
  
  def index
    @watchings = Watching.all
  end
  def new
    @watching = Watching.new
  end
  
  def create
    @watching = current_user.watchings.new(watching_params)
    
    if @watching.save
      redirect_to new_watching_path, success: "投稿に成功しました"
    else
      flash.now[:danger] = "投稿エラー"
      render :new
    end
  end
  
  private
  def watching_params
    params.require(:watching).permit(:user_id, :ballpark, :game, :dead_line, :member, :title, :message)
  end
end
