class User < ActiveRecord::Base
  attr_accessible :email, :name, :provider, :uid

  has_many :movies

  def self.create_with_omniauth(auth)  
    create! do |user|  
      user.provider = auth["provider"]  
      user.uid = auth["uid"] 
	puts auth["user_info"].inspect 
      user.name = auth["user_info"]["name"]  

    end  
  end  
end
