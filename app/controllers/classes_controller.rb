class ClassesController < ApplicationController
  def show
  end
  def codex_classes
    if params[:index].present?
      @classes = DndApiService.fetch("classes/#{params[:index]}")
    else
      @classes = DndApiService.fetch("classes")
    end
    render json: @classes
  end
end
