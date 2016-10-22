class WebsitesController < ApplicationController
  before_action :find_website, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @websites = Website.all
  end

  def show
  end

  def new
    @website = Website.new
  end

  def create
    @website = Website.new(website_params)

    if @website.save
      redirect_to @website
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @website.update(website_params)
      redirect_to @website
    else
      render 'edit'
    end
  end

  def destroy
    @website.destroy
    redirect_to websites_path
  end

  private

  def find_website
    @website = Website.find(params[:id])
  end

  def website_params
    params.require(:website).permit(:title, :content, :image, :siteurl)
  end
end
