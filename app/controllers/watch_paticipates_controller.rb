class WatchPaticipatesController < ApplicationController
  
  def index
    @watching = Watching.find(params[:id])
  end
  
  def create
    @watch_paticipate = current_user.watch_paticipates.new(watching_id: params[:watch_paticipate][:watching_id])
    if @watch_paticipate.save
      redirect_to watching_path(id: params[:watch_paticipate][:watching_id]), success: "参加申請しました。承認されるまでお待ち下さい。"
    else
       flash.now[:danger] = "ユーザー登録 or ログインして下さい"
      redirect_to root_path
    end
  end
  
  def update
    watch_paticipate = WatchPaticipate.find(params[:id])
    watch_paticipate.toggle(:allowed)
    watch_paticipate.save
    redirect_back(fallback_location: root_path)
  end
end
