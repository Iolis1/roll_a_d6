class SpellsController < ApplicationController
  def show
  end
  
  def spells
    if params[:index].present?
      @spell = DndApiService.fetch("spells/#{params[:index]}")
    else
      @spell = DndApiService.fetch("spells")
    end
    render json: @spell
  end
end
