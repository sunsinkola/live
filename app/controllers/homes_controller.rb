class HomesController < ApplicationController
  
  def index
    @listings = Listing.all
  end

end
