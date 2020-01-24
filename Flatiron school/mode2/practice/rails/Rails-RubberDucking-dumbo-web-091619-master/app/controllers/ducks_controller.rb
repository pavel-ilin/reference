class DucksController < ApplicationController

  def index
    @ducks = Duck.all
  end

  def new
    @duck = Duck.new
  end

  def show
    @duck = Duck.find(params[:id])
  end

  def edit
    @duck = Duck.find(params[:id])
  end

  def create
    @duck = Duck.create(params.require(:duck).permit(:name, :description, :student_id))
    redirect_to duck_path(@duck)
  end

  def update
    duck = Duck.update(params.require(:duck).permit(:name, :description, :student_id))
    redirect_to duck_path(duck)
  end

  def destroy
    duck = Duck.find(params[:id])
    duck.destroy
    redirect_to ducks_path
  end


end
