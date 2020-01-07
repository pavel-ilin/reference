class BuildingsController < ApplicationController

  def index
    @buildings = Building.all
  end

  def new
    @building = Building.new
  end

  def create
    @building = Building.create(building_params)
    redirect_to buildings_path
  end

  def show
    @building = building_find
  end

  def edit
    @building = building_find
  end

  def update
    @building = building_find
    @building.update(building_params)
    redirect_to building_path
  end

  def destroy
    @building = building_find
    @building.destroy
    redirect_to buildings_path
  end


  private

  def building_params
    params.require(:building).permit(:name, :country, :address, :rent_per_floor, :number_of_floor)
  end

  def building_find
    Building.find(params[:id])
  end
end
