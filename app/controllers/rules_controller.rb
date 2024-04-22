class RulesController < ApplicationController
  def show
  end
  
  def rules
    @rules = DndApiService.fetch("rule-sections/#{params[:index]}")
    render json: @rules
  end
end
