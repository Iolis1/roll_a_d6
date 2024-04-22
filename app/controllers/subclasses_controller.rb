class SubclassesController < ApplicationController
  def show
  end

  def subclasses
    if params[:index].present?
      @subclasses = DndApiService.fetch("subclasses/#{params[:index]}")
    else
      @subclasses = DndApiService.fetch("subclasses")
    end
    render json: @subclasses
  end
end
