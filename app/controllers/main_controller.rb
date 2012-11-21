class MainController < ApplicationController
  def index
  	# @movie = Movie.last
  	@lastmovies = Movie.order("created_at desc").limit(3)
  end

  
end
