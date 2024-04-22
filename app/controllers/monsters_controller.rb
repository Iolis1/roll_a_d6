class MonstersController < ApplicationController
  def show
  end
  
  def monsters
    @Monsters = DndApiService.fetch("monsters/#{params[:index]}")
    render json: @Monsters
  end
end
