class FeaturesController < ApplicationController
  def show
    @feature = DndApiService.fetch("features/#{params[:index]}")
  end
end
