class TraitsController < ApplicationController
  def show
  end

  def traits
    if params[:index].present?
      @traits = DndApiService.fetch("traits/#{params[:index]}")
    else
      @traits = DndApiService.fetch("traits")
    end
    render json: @traits
  end
end
