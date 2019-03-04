class ArtistsController < ApplicationController
	def show
		@artist = Artist.find(params[:id])
		
		@user = User.find(session[:user_id])
	end
end
