class SessionsController < ApplicationController

  skip_before_action :logged_in?

 def new
  if current_user
    redirect_to '/'
  else
    # render 'sessions/new'
    render :layout => "_video_background"
  end
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
    #session[:user_id] = nil
  	session.delete :user_id
  	redirect_to '/'
 end

 private

 def session_params
 	params.require(:session).permit(:username, :password)
 end

end