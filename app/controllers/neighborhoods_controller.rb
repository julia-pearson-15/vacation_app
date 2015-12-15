class NeighborhoodsController < ApplicationController
  before_action :authorize, except: [:index, :show]
  
  def index
    @neighborhoods = Neighborhood.all
  end

  def show
    @neighborhood = Neighborhood.find(params[:id])
    @listings = @neighborhood.listings
  end

  def new
    @neighborhood = Neighborhood.new
  end

  def create
    @neighborhood = Neighborhood.create(neighborhood_params)
    redirect_to @neighborhood
  end

  private
    def neighborhood_params
      params.require(:neighborhood).permit(:name, :city, :state, :zip, :img_url)
    end

end	