class RacesController < ApplicationController
  def show
  end
  
  def races
    @races = DndApiService.fetch("races/#{params[:index]}")
    render json: @races
  end
end
