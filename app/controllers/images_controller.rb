class ImagesController < ApplicationController
  def index
    @current_listing = current_user.listings.find(params[:id])
    @images = @current_listing.images.all
    @all= Image.all
  end

  def show
    @image = current_user.images.find(params[:id])
  end

  def new
    @image = current_user.images.new
  end

  def create
    @listing = Listing.find(params[:listing_id])
    @image = @listing.images.build(params[:image])
    @image.user = User.find(current_user.id)
  end

  def edit
    @image = current_user.images.find(params[:id])
  end

  def update
    @image = current_user.images.find(params[:id])
    if @image.update_attributes(params[:image])
      redirect_to @image, :notice  => "Successfully updated image."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @image = current_user.images.find(params[:id])
    @image.destroy
    redirect_to images_url, :notice => "Successfully destroyed image."
  end
end
