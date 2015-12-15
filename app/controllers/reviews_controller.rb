class ReviewsController < ApplicationController
  # no need for index or show here!! Reviews are only displayed on Listing page
  def new
    @review = Review.new
  end

  def create 
    @review = Review.create({review_params})
    @listing = Listing.find(params[:listing_id])

    redirect_to '/listings/#{parms[:listing_id]}'
  end

  private
    def review_params
      params.require(:review).permit(:content, :user, :listing)
    end
end	