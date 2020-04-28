class MeetPaticipatesController < ApplicationController
  
  def index
    @meeting = Meeting.find(params[:id])
  end
 
  def new
    @meet_paticipate = Meet_paticipate.new
  end
  
  def create
    @meet_paticipate = current_user.meet_paticipates.new(meeting_id: params[:meeting_id])
    if @meet_paticipate.save
      redirect_to meeting_path(id: params[:meeting_id]), success: "参加申請しました。承認されるまでお待ち下さい。"
    else
      flash.now[:danger] = "ユーザー登録 or ログインして下さい"
      redirect_to root_path
    end
      
  end
end
