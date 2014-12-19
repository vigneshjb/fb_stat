class SessionsController < ApplicationController

  def create
    user = User.find_for_oauth(request.env["omniauth.auth"])
    authentication = Authentication.from_omniauth(request.env["omniauth.auth"], user)
    session[:user_id] = user.id
    redirect_to menu_path
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end

  private
  	def userparams 
  		params.require(:user).permit(:name, :email, :sex)
  	end
end