class PlantsController < ApplicationController
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
    render :json => plants
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
