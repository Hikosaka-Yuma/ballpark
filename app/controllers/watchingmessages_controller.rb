class WatchingmessagesController < ApplicationController
  def index
    @watching = Watching.find(params[:id])
  end
  
  def show
    @watching = Watching.find(params[:id])
    @watchingmessage = Watchingmessage.all
  end
  
  def new
     @mwatching = Watching.find(params[:id])
     @watchingmessage = Wathingmessage.new
  end
  
  def create
    @watchingmessage = current_user.watchingmessages.new(message: params[:message], watching_id: params[:watching_id])
    if @watchingmessage.save
      redirect_to watching_path(params[:watching_id]), success: "メッセージを送信致しました"
    else
      flash.now[:danger] = "送信失敗致しました"
      redirect_to watching_path(params[:watching_id])
    end
  end
  
  private
  def message
    params.require(:watchningmessage).permit(:message, :user_id, :watching_id)
  end
end
