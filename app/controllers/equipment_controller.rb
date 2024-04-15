class EquipmentController < ApplicationController
  def show
    @equipment = DndApiService.fetch("equipment/#{params[:index]}")
  end
end
