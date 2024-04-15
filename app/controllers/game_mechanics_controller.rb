class GameMechanicsController < ApplicationController
  before_action :set_api_service

  def magic_school
    @magic_school = @api_service.fetch("magic-schools/#{params[:index]}")
  end

  def damage_type
    @damage_type = @api_service.fetch("damage-types/#{params[:index]}")
  end

  def condition
    @condition = @api_service.fetch("conditions/#{params[:index]}")
  end

  private

  def set_api_service
    @api_service = DndApiService.new
  end
  
end
