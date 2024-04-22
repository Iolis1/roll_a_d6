class EquipmentController < ApplicationController
  def show
  end
  
  def equipment
    @equipment = DndApiService.fetch("equipment/#{params[:index]}")
    render json: @equipment
  end
end
