class BookingsController < ApplicationController
  def new
  end
    
  def create
    @booking = Booking.new(booking_params)
    if @booking.save!
      render json: { message: 'booking created' }, status: :created
    else
      render json: { error: 'Unable to create booking' }, status: :unprocessable_entity
    end
  end

  def booking_params
    params.require(:booking)
      .permit(:start_time, :end_time, :package_id)
  end
end

