class GameMechanicsController < ApplicationController
  def index
  end

  def magic_schools
    @magic_schools = DndApiService.fetch("magic-schools/#{params[:index]}")
    render json: @magic_schools

  end

  def damage_types
    @damage_types = DndApiService.fetch("damage-types/#{params[:index]}")
    render json: @damage_types
  end

  def conditions
    @conditions = DndApiService.fetch("conditions/#{params[:index]}")
    render json: @conditions
  end  
end
