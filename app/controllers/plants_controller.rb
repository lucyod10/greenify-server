# frozen_string_literal: true

class PlantsController < ApplicationController
# TODO remove when login is implemented
skip_before_action :verify_authenticity_token

  def index
    # if params[:name].present? do
    #   plants = Plant.find_by(name: params[:name])
    # end
    #
    # THis is the string to add to the end of the URL to filer: (separate by "&")
    # ?id=9&name=Touch%20Me%20Not
    #
    # plants = Plant.find_by(apistring)
    plants = Plant.all
    render json: plants
  end

  def show;
  end

  def new;
  end

  def create
    @plant = Plant.new(plant_params)

    respond_to do |format|
      if @plant.save
        puts "Plant saved success"
        format.json { render :show, status: :created, plant: @plant }
      else
        puts "Plant save error"
        format.json { render json: @plant.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit;
  end

  def update;
  end

  def destroy;
  end

  private

  def set_plant
    @plant = Plant.find(params[:id])
  end

  def plant_params
    params.require(:plant).permit(:name, :images, :age, :status, :cost, :worth, :description)
  end
end
