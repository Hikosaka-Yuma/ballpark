class MeetingmessagesController < ApplicationController
  
  def index
    @meeting = Meeting.find(params[:id])
  end
  
  def show
    @meeting = Meeting.find(params[:id])
    @meetingmessage = Meetingmessage.all
  end
  
  def new
     @meeting = Meeting.find(params[:id])
     @meetingmessage = Meetingmessage.new
  end
  
  def create
    @meetingmessage = current_user.meetingmessages.new(message: params[:message], meeting_id: params[:meeting_id])
    if @meetingmessage.save
      redirect_to meeting_path(params[:meeting_id]), success: "メッセージを送信致しました"
    else
      flash.now[:danger] = "送信失敗致しました"
      render :new
    end
  end
  
  private
  def message
    params.require(:meetingmessage).permit(:message, :user_id, :meeting_id)
  end
  
end
