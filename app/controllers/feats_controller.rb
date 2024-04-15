class FeatsController < ApplicationController
  def show
    @feat = DndApiService.fetch("feats/#{params[:index]}")
  end
end
