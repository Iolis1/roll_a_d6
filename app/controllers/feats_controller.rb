class FeatsController < ApplicationController
  def show
  end
  
  def feats
    @feats = DndApiService.fetch("feats/#{params[:index]}")
    render json: @feats
  end
end
