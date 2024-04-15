class SpellsController < ApplicationController
  def show
    @spell = DndApiService.fetch("spells/#{params[:index]}")
  end
end
