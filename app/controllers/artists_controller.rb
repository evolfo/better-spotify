class ArtistsController < ApplicationController
	def show
		@artist = Artist.find(params[:id])
		
		@user = User.find(username: session[:username])
	end
end
