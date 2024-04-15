class MonstersController < ApplicationController
  def show
    @monster = DndApiService.fetch("monsters/#{params[:index]}")
  end
end
