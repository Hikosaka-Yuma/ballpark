class PostsController < ApplicationController
  
  def index
     @team_id = params[:id]
     @posts = Post.all.order(created_at: :desc)
  end
  
  def new
    @team_id = params[:id]
    @post = Post.new(id: @team_id)
  end
  
  def create
    @post = current_user.posts.new(post_params)
    if @post.save
     redirect_to posts_path(id: @team_id), success: '投稿に成功しました'
    else
     flash.now[:danger] = "投稿に失敗しました"
     render :new
    end
  end
  
  private
  def post_params(id: @team_id)
    params.require(:pots).permit(:title,:description, :user_id)
  end

end
