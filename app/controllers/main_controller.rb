class MainController < ApplicationController
  def index
  	# @movie = Movie.last
  	@lastmovies = Movie.order("created_at desc").limit(4)
  end

  def follow
  	if current_user
 	  if params[:user_id]
  	    Follow.create(:follower_id => current_user.id, :followed_id => params[:user_id])
        # Follow.find_or_create_by_product_id(product.id) { |u| 
        #   u.property_id => property_id,
        #   u.value => d[descname] 
        # } )

        @msg = "You are following to: #{@current_user.name}"
      else 
      	@msg = "The autor of the movie doesn't exists!"
      end
  	else 
      @msg = "You should be logged in to follow :("
  	end
  end

  # def followers
  # 	if current_user
 	#     Follow.where("followed LIKE '%#{current_user}%'")
  #     Client.where("orders_count = ?", params[:orders])
  #     
  # 	else 
  #     @msg = "You should be logged in."
  # 	end
  # end

end
