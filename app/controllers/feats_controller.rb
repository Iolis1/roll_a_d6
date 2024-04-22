class FeatsController < ApplicationController
  def show
  end
  
  def feats
    if params[:index].present?
      @feats = DndApiService.fetch("feats/#{params[:index]}")
    else
      @feats = DndApiService.fetch("feats")
    end
    render json: @feats
  end
end
