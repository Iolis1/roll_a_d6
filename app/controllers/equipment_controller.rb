
class EquipmentController < ApplicationController
  def show
  end
  
  def equipment
    if params[:index].present?
      @equipment = DndApiService.fetch("equipment/#{params[:index]}")
    else
      @equipment = DndApiService.fetch("equipment")
    end
    render json: @equipment
  end

  def equipment_categories
    if params[:index].present?
      @equipment_categories = DndApiService.fetch("equipment-categories/#{params[:index]}")
    else
      @equipment_categories = DndApiService.fetch("equipment-categories")
    end
    render json: @equipment_categories
  end

  def magic_items
    if params[:index].present?
      @magic_items = DndApiService.fetch("magic-items/#{params[:index]}")
    else
      @magic_items = DndApiService.fetch("magic-items")
    end
    render json: @magic_items
  end

  def weapon_properties
    if params[:index].present?
      @weapon_properties = DndApiService.fetch("weapon-properties/#{params[:index]}")
    else
      @weapon_properties = DndApiService.fetch("weapon-properties")
    end
    render json: @weapon_properties
  end
end
