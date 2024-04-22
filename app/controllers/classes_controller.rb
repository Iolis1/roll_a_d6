class ClassesController < ApplicationController
  def show
  end
  def classes
    @classes = DndApiService.fetch("classes/#{params[:index]}")
    render json: @classes
  end
end
