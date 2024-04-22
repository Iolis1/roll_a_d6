class SubracesController < ApplicationController
  def show
  end

  def subraces
    if params[:index].present?
      @Subraces = DndApiService.fetch("subraces/#{params[:index]}")
    else
      @Subraces = DndApiService.fetch("subraces")
    end
    render json: @Subraces
  end
end
