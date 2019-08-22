# frozen_string_literal: true

class PlantsController < ApplicationController
  # blocks the user from seeing these pages unless they're logged in
  # Commented out for Development Mode
  before_action :authenticate_user, :except => [:index, :show, :availabilities, :bookings, :comments]

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

  def availabilities
    plant = Plant.find(params[:id]).availabilities
    render json: plant
  end

  def bookings
    plant = Plant.find(params[:id]).bookings
    render json: plant
  end

  def comments
    @comment = Plant.find(params[:id]).comments

    render "comment.json"
  end

  def comment
    plant = Plant.find(params[:id])
    comment = Comment.new comment_params
    comment.user_id = current_user.id
    comment.plant_id = params[:id]
    comment.save

    plant.comments << comment
    render json: plant
  end

  def book
    plant = Plant.find(params[:id])

    booking = Booking.new book_params
    booking.user_id = current_user.id
    booking.plant_id = params[:id]
    booking.save

    plant.bookings << booking

    render json: plant
  end

  def new

  end

  def create
    # Check if the user is logged in, and is a seller. Otherwise don't allow them to create.
    #if current_user.is_seller?
      @plant = Plant.create plant_params

      availability = Availability.create(params[:date_from], params[:date_to])
      availability.user_id = current_user.id
      @plant.user_id = current_user.id
      availability.save
      @plant.availabilities << availability

      render :json => @plant

      #this caused error, it said format doesnt exist????????? WOrks when commented out.

      #
      # if params[:plant][:file].present?
      #   # Then call Cloudinary's upload method, passing in the file in params
      #   req = Cloudinary::Uploader.upload(params[:plant][:file])
      #   # Using the public_id allows us to use Cloudinary's powerful image
      #   # transformation methods.
      #   @plant.images = req["public_id"]

      # else
        # @plant.images = '31-316009_leaves-plant-stem-silhouette-png-image-_f5mmey' #set detault image
      # end


    # end
    #@plant.save
  end

  def edit
  end

  def update
    @plant = Plant.find params[:id]


    if request.patch?
        @plant.update plant_params

    else
        if params[:file].present?
          # Then call Cloudinary's upload method, passing in the file in params
          req = Cloudinary::Uploader.upload(params[:file])
          # Using the public_id allows us to use Cloudinary's powerful image
          # transformation methods.
          @plant.images = req["public_id"]
        elsif !@plant.images.present?
            @plant.images = '31-316009_leaves-plant-stem-silhouette-png-image-_f5mmey' #set detault image
        end
    @plant.save
    end

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

  def book_params
    params.require(:booking).permit(:user_id, :plant_id, :from, :to)
  end

  def comment_params
    params.require(:comment).permit(:user_id, :plant_id, :comment, :rating)
  end
end
