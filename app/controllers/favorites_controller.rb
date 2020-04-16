class FavoritesController < ApplicationController
  
  def index
  end
  
  def create
    favorite = Favorite.new
    favorite.user_id = current_user.id
    favorite.comment_id = params[:comment_id]
    
    if favorite.save
      redirect_to new_comment_path(team_id: params[:team_id], post_id:params[:post_id]), success: "いいねしました"
    else
      redirect_to new_comment_path(team_id: params[:team_id], post_id:params[:post_id]), danger: "エラー！"
    end
  end
  
  def destroy
    @favorite = Favorite.find_by(comment_id: params[:comment_id], user_id: current_user.id)
    @favorite.destroy
    redirect_to new_comment_path(team_id: params[:team_id], post_id: params[:post_id]), danger: "いいねを削除しました"
  end
    
end
