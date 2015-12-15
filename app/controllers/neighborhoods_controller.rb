class NeighborhoodsController < ActionController::Base
  def index
    @neighborhoods = Neighborhood.all
  end

  def show
    @neighborhood = Neighborhood.find(params[:id])
  end

  def new
    @neighborhood = Neighborhood.new
  end

  def create
    @Neighborhood = Neighborhood.create({name: params[:name], city: params[:city], state:, name: params[:name] params[:state], zip: params[:zip]})
end	