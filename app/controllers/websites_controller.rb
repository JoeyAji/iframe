class WebsitesController < ApplicationController
  before_action :set_website, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /websites
  # GET /websites.json


  def index
    if params[:websites] == nil
      @websites = Website.all
    else 
      @websites = params[:websites]
    end

      if params[:from_create] == nil
        @x=rand(1..@websites.size)
        @randsite=Website.find(@x).siteurl
        @nowuser= current_user.id
      else
        @x=params[:website_id]
        @randsite=Website.find(@x).siteurl
        @nowuser= params[:user_id]
        params[:from_create] == nil
      end

  end

  def createlike

    Sitelike.create(website_id: params[:website_id], user_id: params[:user_id])
    redirect_to website_path(from_create: true, website_id: params[:website_id], user_id: params[:user_id])

  end

  def taggedsites
    @websites = Websites.where(tag: params[:tag]).distinct
    redirect_to website_path(websites: @websites)
  end

end
