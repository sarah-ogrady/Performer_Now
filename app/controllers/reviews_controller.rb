class ReviewsController < ApplicationController

  def new
    @review = Review.new
    @booking = Booking.find(params[:booking_id])
  end

  def create
    @review = Review.new(review_params)
    @booking = Booking.find(params[:booking_id])
    @review.booking = @booking
    @review.user = current_user
    if @review.save
      redirect_to review_path(@review)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :title, :description)
  end
end


end
