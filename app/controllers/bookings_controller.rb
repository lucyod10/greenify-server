class BookingsController < ApplicationController
  before_action :authenticate_user, :only => [:create, :new, :edit, :update]

  def index
    bookings = Booking.all
    render :json => bookings
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
