class MeetPaticipatesController < ApplicationController
  
  def index
    @meeting = Meeting.find(params[:id])
  end
 
  
  def create
    @meet_paticipate = current_user.meet_paticipates.new(meeting_id: params[:meet_paticipate][:meeting_id])
    if @meet_paticipate.save
      redirect_to meeting_path(id: params[:meet_paticipate][:meeting_id]), success: "参加申請しました。承認されるまでお待ち下さい。"
    else
      flash.now[:danger] = "ユーザー登録 or ログインして下さい"
      redirect_to root_path
    end
      
  end
  
  def update
    meet_paticipate = MeetPaticipate.find(params[:id])
    meet_paticipate.toggle(:allowed)
    meet_paticipate.save
    redirect_back(fallback_location: root_path)
  end
  
end
