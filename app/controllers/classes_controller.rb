class ClassesController < ApplicationController
  def show
    @class = DndApiService.fetch("classes/#{params[:index]}")
  end
end
