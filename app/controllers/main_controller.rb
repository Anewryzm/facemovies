class MainController < ApplicationController
  def index
  	# @movie = Movie.last
  	@lastmovies = Movie.order("created_at desc").limit(3)
  end

  def follow
  	if @current_user && params[:user_id]
  	  Follow.create(:follower_id => @current_user.id, :followed_id => params[:user_id])
      @msg = "You are following #{@current_user}"
  	else 
      @msg = "You should be logged in to follow :("
  	end
  end

end
