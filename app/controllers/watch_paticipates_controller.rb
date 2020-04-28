class WatchPaticipatesController < ApplicationController
  
  def index
    @watching = Watching.find(params[:id])
  end
  
  def new
    @watch_paticipate = Watch_paticipate.new
  end
  
  def create
    @watch_paticipate = current_user.watch_paticipates.new(watching_id: params[:watching_id])
    if @watch_paticipate.save
      redirect_to watching_path(id: params[:watching_id]), success: "参加申請しました。承認されるまでお待ち下さい。"
    else
       flash.now[:danger] = "ユーザー登録 or ログインして下さい"
      redirect_to root_path
    end
  end
end
