class AvailabilitiesController < ApplicationController
  def index
    availabilities = Availability.all
    render :json => availabilities
  end

  def show
    availabilities = Availability.find(params[:id])
    render json: availabilities
  end

  def new
  end

  def create
    @availability = Availability.new(availability_params)

    respond_to do |format|
      if @availability.save
        puts "Availability saved successfully"
        format.json { render :show, status: :created, availability: @availability }
      else
        puts "Availability save error"
        format.json { render json: @availability.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @availability.update(availability_params)
          format.json { render :show, status: :ok, location: @availability }
        else
        format.json { render json: @availability.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @availability.destroy
  respond_to do |format|
    format.json { head :no_content }
  end
  end

end
