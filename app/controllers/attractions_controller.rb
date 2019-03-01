class AttractionsController < ApplicationController
  def index
    @attractions = Attraction.all
  end

  def show
    @attraction = Attraction.find(params[:id])
  end

  def new
    @attraction = Attraction.new
  end

  def create
    binding.pry
    @attraction = Attraction.create(attraction_params)
    return redirect_to controller: 'attractions', action: 'new' unless @attraction.save
    redirect_to attraction_path(@attraction)
  end
end
