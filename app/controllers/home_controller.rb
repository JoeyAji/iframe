class HomeController < ApplicationController
	#before_action :authenticate_user!
	def tutorial
    @websites = Website.all
    
    @x=rand(1..@websites.size)
    @randsite=Website.find(@x).siteurl

   @sitelike = Sitelike.all 
	end
end
