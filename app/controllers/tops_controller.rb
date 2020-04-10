class TopsController < ApplicationController
  def index
     @teams = Team.all
  end
  
  def privacy
  end
  
end
