class BookingsController < ApplicationController
    before_action :set_booking, only: [:show, :edit, :update, :destroy]
    before_action :set_flat, only: [:create, :edit, :new]
  
    def index
      @bookings = Booking.all
    end
  
  def show
    puts "show booking"
    p @booking
    p @booking.start_date
  end
  
  def new
    puts "new"
    @booking = Booking.new
  end
  
  def create
    puts "create"
      @booking = Booking.new(booking_params)
      p @booking
      p @flat
      @booking.flat = @flat
      @booking.save
      redirect_to flat_path(@flat)
  end
  
  def edit
    puts "edit booking"
    p @booking
    p @flat
  end
  
  def update
      @booking.update(booking_params)
      redirect_to flat_booking_path(@booking.flat_id, @booking.id)
  end
  
  def destroy
    puts "destroy"
    @booking.destroy
    redirect_to flat_path(@booking.flat_id), status: :see_other
  end
  
    private
      
    def set_booking
      @booking = Booking.find(params[:id])
    end

    def set_flat
      @flat = Flat.find(params[:flat_id])
  end
  
    def booking_params
        params.require(:booking).permit(:name, :start_date, :end_date)
    end
  end
  