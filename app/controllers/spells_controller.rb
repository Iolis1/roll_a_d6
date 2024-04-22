class SpellsController < ApplicationController
  def show
  end
  
  def spells
    @spell = DndApiService.fetch("spells/#{params[:index]}")
    render json: @spell
  end
end
