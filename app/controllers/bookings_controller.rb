class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    @performer = Performer.find(params[:performer_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @performer = Performer.find(params[:performer_id])
    @booking.performer = performer
    @booking.user = current_user
    @booking.total_price = performer.hourly_rate * @booking.total_hours
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:total_hours, :date)
  end
end
