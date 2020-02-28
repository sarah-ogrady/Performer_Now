class PerformersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @performers = Performer.where(job_title: params.dig(:search, :job_title))
    @performers = Performer.all if @performers.empty?
      # if params.dig(:search, :job_title).present?
      #   return
      # else
      #   @performers.job_title.all
      # end
  end

  def confirmation
    @booking = Booking.find(params[:id])
  end

  def show
    @performer = Performer.find(params[:id])
    @booking = Booking.new
  end
end
