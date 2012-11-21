class Session < ActiveRecord::Base
  attr_accessible :movie_id, :started_at, :user_id
end
