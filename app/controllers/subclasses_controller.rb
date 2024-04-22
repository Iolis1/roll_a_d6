class SubclassesController < ApplicationController
  def show
  end

  def subclasses
    @subclasses = DndApiService.fetch("subclasses/#{params[:index]}")
    render json: @subclasses
  end
end
