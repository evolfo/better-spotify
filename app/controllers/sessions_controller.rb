class SessionsController < ApplicationController

 def new
 end

 def create
   user = User.find_by(username: params[:session][:username])
   if user && user.authenticate(params[:session][:password])
     session[:user_id] = user.id
     @user = user
     redirect_to(controller: "application", action: "welcome")
   else
     redirect_to '/login'
   end
 end

 def destroy
  	session.delete :user_id
  	redirect_to '/'
 end

 private

 def session_params
 	params.require(:session).permit(:username, :password)
 end

end