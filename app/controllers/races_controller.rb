class RacesController < ApplicationController
  def show
  end
  
  def codex_races
    if params[:index].present?
      @races = DndApiService.fetch("races/#{params[:index]}")
    else
      @races = DndApiService.fetch("races")
    end
    render json: @races
  end
end
