class FollowsController < InheritedResources::Base
  validates_presence_of :follower_id
  validates_presence_of :followed_id
end
