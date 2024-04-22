class TraitsController < ApplicationController
  def show
  end

  def traits
    @traits = DndApiService.fetch("traits/#{params[:index]}")
    render json: @traits
  end
end
