class ListingsController < ActionController::Base
  # this will be index for all listings and the specific listings of a neighborhood
  def index
    # this checks if there is a neighborhood_id in the path. If not, just acts normally.
    # ALEX AND NATASHA - for you purposes, just use @listings as your variable, ^ doesn't matter 
    if params[:neighborhood_id]{
      @listings = Listing.where(neighborhood_id: params[:neighborhood_id])
    } else {
      @listings = Listing.all
    }
    end
  end

  def show
    
  end
end	