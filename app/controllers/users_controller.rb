class UsersController < ApplicationController
	include SkipAuthorization
	helper UsersHelper

	def index
    @users = User.all
		end

	def show
		@user = User.friendly.find(params[:id])
		@blurbs = @user.blurbs
	end
	
end