class User < ActiveRecord::Base
  attr_accessible :email, :name, :provider, :uid

  has_many :movies

  # creation of the user using data from 
  def self.create_with_omniauth(auth)  
    create! do |user|  
      user.provider = auth["provider"]  
      user.uid = auth["uid"]  
      user.name = auth["user_info"]["name"] if auth["user_info"]
    end  
  end  
end
