class BookingsController < ApplicationController
  before_action :authenticate_user! unless Rails.env == 'test'
  load_and_authorize_resource unless Rails.env == 'test'

  def index
    bookings = Booking.includes(:package).all
    if bookings.empty?
      render json: { message: 'There are no booking created currently.' } if bookings.empty?
    else
      render json: bookings.as_json(include: :package)
    end

  end

  def new; end

  def create
    booking = Booking.new(booking_params)
    if booking.save
      render json: { message: 'booking created' }, status: :created
    else
      render json: { error: 'Unable to create booking' }, status: :unprocessable_entity
    end
  end

  def destroy
    booking = Booking.find(params[:id])
    if booking.destroy
      render json: { message: 'Booking removed sucessfully' }, status: :ok
    else
      render json: { message: "Sorry, couldn't remove booking" }, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking)
      .permit(:start_time, :end_time, :package_id)
      .with_defaults(user_id: current_user.id)
  end
end
