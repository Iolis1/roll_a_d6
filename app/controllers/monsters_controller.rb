class MonstersController < ApplicationController
  def show
  end
  
  def monsters
    if params[:index].present?
      @Monsters = DndApiService.fetch("monsters/#{params[:index]}")
    else
      @Monsters = DndApiService.fetch("monsters")
    end
    render json: @Monsters
  end
end
