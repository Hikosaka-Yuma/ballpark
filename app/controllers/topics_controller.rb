class TopicsController < ApplicationController
  def index
  end
  
  def show
    @team_id = params[:id]
    #@users = User.where(team_id: params[:id])
    #@image = params[:id]
  end
end