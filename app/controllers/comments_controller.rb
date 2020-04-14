class CommentsController < ApplicationController
  
  def index
    @post = Post.find(params[:id])
    @comment = Comment.all.order(created_at: :desc)
   
  end
  
  def show
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end
  
  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
    @team = Team.find(params[:team_id])
    
  end
  
  def create
    @comment = current_user.comments.new(comment_params)
    if @comment.save
       redirect_to new_comment_path(team_id: params[:comment][:team_id], post_id: params[:comment][:post_id]), success: "投稿に成功しました"
    else
       flash.now[:danger] = "投稿に失敗しました"
       render :new
    end
  end
  
  private
  def comment_params
    params.require(:comment).permit(:description, :user_id, :post_id)
  end
end
