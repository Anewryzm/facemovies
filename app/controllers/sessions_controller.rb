class SessionsController < ApplicationController
  
  # POST creates the session with omniauth information
  def create  
    auth = request.env["omniauth.auth"]  
    user = User.find_by_provider_and_uid(auth["provider"], auth["uid"]) || User.create_with_omniauth(auth)  
    session[:user_id] = user.id
    redirect_to root_url, :notice => "Signed in!"
  end  

  # DELETE /sessions/1
  # DELETE /sessions/1.json
  def destroy
    session[:user_id] = nil  
    redirect_to root_url, :notice => "Signed out!"  
  end
end
