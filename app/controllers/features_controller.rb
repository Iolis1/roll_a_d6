class FeaturesController < ApplicationController
  def show
  end
  
  def features
    if params[:index].present?
      @features = DndApiService.fetch("features/#{params[:index]}")
    else
      @features = DndApiService.fetch("features")
    end
    render json: @features
  end
end
