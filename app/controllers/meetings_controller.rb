class MeetingsController < ApplicationController
  
  def index
    @meetings = Meeting.all.order(created_at: :desc)
   
  end
  
  def new
    @meeting = Meeting.new
  end
  
  def show
    @meeting = Meeting.find(params[:id])
    #@user = @meeting.user
    @meet_paticipate = @meeting.meet_paticipates
    @meetingmessage = @meeting.meetingmessages
  end
  
  
  def new
    @meeting = Meeting.new
  end

  def create
    @meeting = current_user.meetings.new(meeting_params)
    if @meeting.save
      redirect_to meetings_path, success: "投稿に成功しました"
    else
      flash.now[:danger] = "投稿エラー"
      render :new
    end
  end
  
  private
  def meeting_params
    params.require(:meeting).permit(:datetime, :deadline, :member, :title, :message, :place, :prefecture, :user_id)
  end
end
