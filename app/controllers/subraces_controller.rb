class SubracesController < ApplicationController
  def show
  end

  def subraces
    @Subraces = DndApiService.fetch("subraces/#{params[:index]}")
    render json: @Subraces
  end
end
