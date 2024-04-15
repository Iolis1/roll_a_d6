class SubclassesController < ApplicationController
  def show
    @subclass = DndApiService.fetch("subclasses/#{params[:index]}")
  end
end
