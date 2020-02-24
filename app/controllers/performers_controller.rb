class PerformersController < ApplicationController
  def index
    @performers = Performer.all
  end

  def show
    @performer = performer.find(params[:id])
  end
end
