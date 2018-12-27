class AnimalsController < ApplicationController

  def index
    @animals = Animal.all
  end

  def show
    @animal = Animal.find(params[:id])
  end

  def new
    @animal = Animal.new
  end

  def create
    @animal = Animal.create(animal_params)
    redirect_to animal_path(@animal)
  end


  private

  def animal_params
    params.require(:animal).permit(:name, :kingdom, :phylum, :class, :order, :family, :genus, :species, :native, :endangerment)
  end

end
