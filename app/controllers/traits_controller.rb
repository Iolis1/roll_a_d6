class TraitsController < ApplicationController
  def show
    @trait = DndApiService.fetch("traits/#{params[:index]}")
  end
end
