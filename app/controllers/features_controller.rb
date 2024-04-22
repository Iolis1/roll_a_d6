class FeaturesController < ApplicationController
  def show
  end
  
  def features
    @features = DndApiService.fetch("features/#{params[:index]}")
    render json: @features
  end
end
