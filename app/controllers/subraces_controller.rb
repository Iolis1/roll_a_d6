class SubracesController < ApplicationController
  def show
    @subrace = DndApiService.fetch("subraces/#{params[:index]}")
  end
end
