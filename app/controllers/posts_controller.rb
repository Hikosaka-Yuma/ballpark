class PostsController < ApplicationController
  
  def index
    @posts = Post.all.order(created_at: :desc)
    @team = Team.find(params[:team_id])
  end
  
  def new
    @team = Team.find(params[:team_id])
    @post = Post.new
  end
  
  def create
    @post = current_user.posts.new(post_params)
    if @post.save
     redirect_to team_path(id: @post.team_id), success: '投稿に成功しました'
    else
     flash.now[:danger] = "投稿に失敗しました"
     render :new
    end
  end
  
  private
  def post_params
    params.require(:post).permit(:title, :description, :team_id)
  end

end
