class PerformersController < ApplicationController
skip_before_action :authenticate_user!, only: [:index]
  def index
    @performers = Performer.all
  end

  def show
    @performer = performer.find(params[:id])
  end
end
