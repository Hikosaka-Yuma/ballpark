class MeetingsController < ApplicationController
  
  def index
    @meetings = Meetings.Find(params[:id])
  end
  
  def new
    @meeting = Meeting.new
  end

  def create
    @meeting = current_user.meetings.new(meeting_params)
    
    if @meeting.save
      redirect_to new_meeting_path, success: "投稿に成功しました"
    else
      flash.now[:danger] = "投稿エラー"
      render :newzs
    end
  end
  
  private
  def meeting_params
    params.require(:meeting).permit(:datetime, :deadline, :member, :title, :message, :place, :prefecture, :user_id)
  end
end
