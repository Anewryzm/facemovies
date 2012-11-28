class User < ActiveRecord::Base
  attr_accessible :email, :name, :provider, :uid

  has_many :movies

  def self.create_with_omniauth(auth)  
    create! do |user|
      user.provider = auth["provider"]  
      user.uid = auth["uid"]  
      user.name = auth["user_info"]["name"]  if user.name
    end  
  end  
end
