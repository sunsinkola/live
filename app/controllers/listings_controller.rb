class ListingsController < ApplicationController
  def index
    @listings = Listing.all
    @user_listings = current_user.listings
  end

  def show
    @listing = Listing.find(params[:id])
    @user_listing = current_user.listings.find(params[:id])
    # For Google Maps
    gon.lat = @listing.latitude
    gon.lon = @listing.longitude
  end

  def new
    @listing = current_user.listings.new 
  end

  def create
    @listing = current_user.listings.new(params[:listing])
    if @listing.save
      redirect_to @listing, :notice => "Successfully created listing."
    else
      render :action => 'new'
    end
  end

  def edit
    @listing = current_user.listings.find(params[:id])
  end

  def update
    @listing = current_user.listings.find(params[:id])
    if @listing.update_attributes(params[:listing])
      redirect_to @listing, :notice  => "Successfully updated listing."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @listing = current_user.listings.find(params[:id])
    @listing.destroy
    redirect_to listings_url, :notice => "Successfully destroyed listing."
  end
end
