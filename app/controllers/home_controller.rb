class HomeController < ApplicationController


	def tutorial
    @websites = Website.all
    
    @x=rand(1..@websites.size)
    @randsite=Website.find(@x).siteurl

    @sitelike = Sitelike.all 
	end
end
