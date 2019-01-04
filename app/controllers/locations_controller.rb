class LocationsController < ApplicationController
skip_before_action :authorized, only: [:index, :show, :new]
before_action :find_location, only: [:show, :update, :edit, :destroy]

  def index
    @locations = Location.all
  end

  def show
  end

  def new
    @location = Location.new
  end

  def create
    @location.create(location_params)
    redirect_to location_path(@location)
  end

  def edit
  end

  def destroy
  end

  def find_location
    @location = Location.find(params[:id])
  end

  def location_params
    params.require(:location).permits(:address, :longiude, :latitude)
  end

end
