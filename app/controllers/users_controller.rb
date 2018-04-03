class UsersController < ApplicationController
	before_action :authenticate_user!

	def show
	@user = User.find(params[:id])

	@sitelikes = Sitelike.all
	@websites= Website.all

	end
	def tags
		#@tags = Website.all.pluck :tag
		@tags = []
		@websites = Website.all
		
	end
end
