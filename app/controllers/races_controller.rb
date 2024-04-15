class RacesController < ApplicationController
  def show
    @race = DndApiService.fetch("races/#{params[:index]}")  
  end
end
