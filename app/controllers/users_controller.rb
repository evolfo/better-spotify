class UsersController < ApplicationController

	skip_before_action :logged_in?, only: [:new, :create]

	def new
		@user = User.new
		render :layout => "_video_background"
	end

	def create
		@user = User.new(user_params)
		if @user.save
			session[:user_id] = @user.id
			redirect_to '/'
		else
			render :new
		end
	end

	private

	def user_params
		params.require(:user).permit(:username, :email, :password, :password_confirmation)
	end
end
