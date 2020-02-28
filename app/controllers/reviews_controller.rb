class ReviewsController < ApplicationController

  def new
    @review = Review.new
    @booking = Booking.find(params[:booking_id])
    @performer = Booking.find(params[:performer_id])
  end

  def create
    @review = Review.new(review_params)
    @booking = Booking.find(params[:booking_id])
    # @performer = @booking.performer
    @review.booking = @booking
    # @review.performer = @performer
    @review.user = current_user
    if @review.save
      # redirect_to performer_path(@booking.performer)
      redirect_back(fallback_location: root_path)
    else
      render 'performers/show'
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :title, :description)
  end
end
