class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
    @performer = Performer.find(params[:performer_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @performer = Performer.find(params[:performer_id])
    @booking.performer = @performer
    @booking.user = current_user
    if @booking.save
      redirect_to confirmation_booking_path(@booking)
    else
      render :new
    end
  end

  def confirmation
    @booking = Booking.find(params[:id])
  end

  private

  def booking_params
    params.require(:booking).permit(:total_hours, :date, :time)
  end
end
