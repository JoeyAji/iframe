class UsersController < ApplicationController
	def show
	@user = User.find(params[:id])

	@sitelikes = Sitelike.all #where(user_id: "(params[:id])")
	@websites= Website.all

	end
end
