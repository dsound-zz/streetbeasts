class AnimalsController < ApplicationController
  before_action :find_animal, only: [:show, :edit, :update, :destroy]
  skip_before_action :authorized, only: [:index, :show]

  def index
    byebug
    @animals = Animal.all
  end


  def show
  end

  def new
    @animal = Animal.new
  end

  def create
    @animal = Animal.create(animal_params)
    redirect_to animal_path(@animal)
  end

  def edit
  end

  def update
    @animal.update(animal_params)
    redirect_to animal_path(@animal)
  end

  def destroy
    @animal.delete(animal_params)
    redirect_to animals_path
  end


  private

  def find_animal
    @animal = Animal.find(params[:id])
  end

  def animal_params
    params.require(:animal).permit(:name, :kingdom, :phylum, :class, :order, :family, :genus, :species, :image)
  end

end
