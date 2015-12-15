class ListingsController < ApplicationController
  # this will be index for all listings and the specific listings of a neighborhood
  # /listings/
  before_action :authorize, except: [:create, :new, :edit, :update]
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

  # /listings/:listing_id
  def show
    @listing = Listing.find(params[:listing_id])
    # These are the reviews that belong to this listing, they will display bellow the listing information.
    @reviews = @listing.reviews
    # will need reviews/new in the reviews controller 
  end

  # /listings/new
  def new
    @listing = Listing.new
  end

  def create 
    @listing = Listing.create({listing_params})
    redirect_to @listing
  end

  # /listings/:listing_id/edit
  def edit
    @listing = Listing.find(params[:listing_id])
  end


  def update
    @listing = Listing.find(params[:listing_id])
    @listing.update(listing_params)

    redirect_to @listing
  end

  private
  def listing_params
    params.require(:listing).permit(:img_url, :address, :price_per_night, :description, :user_id, :neighborhood_id)
  end
end	