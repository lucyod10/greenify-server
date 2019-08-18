# frozen_string_literal: true

class PlantsController < ApplicationController
  # blocks the user from seeing these pages unless they're logged in
  # Commented out for Development Mode
  # before_action :authenticate_user

  # TODO remove when login is implemented
  # skip_before_action :verify_authenticity_token

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

  def show
    plants = Plant.find(params[:id])
    render json: plants
  end

  def new
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

  def edit
  end

  def update
    @plant = Plant.find params[:id]
    if params[:file].present?
      # Then call Cloudinary's upload method, passing in the file in params
      req = Cloudinary::Uploader.upload(params[:file])
      # Using the public_id allows us to use Cloudinary's powerful image
      # transformation methods.
      @plant.images = req["public_id"]
    else
      @plant.images = '31-316009_leaves-plant-stem-silhouette-png-image-_f5mmey' #set detault image
    end
    @plant.save
    render json: @plant
  end


  def destroy
    @plant = Plant.find params[:id]
    if current_user.admin?
      @plant.destroy
    end
  end

  private

  def set_plant
    @plant = Plant.find(params[:id])
  end

  def plant_params
    params.require(:plant).permit(:name, :images, :age, :status, :cost, :worth, :description)
  end
end
