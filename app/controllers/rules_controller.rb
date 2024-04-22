class RulesController < ApplicationController
  def show
  end
  
  def rules
    if params[:index].present?
      @rules = DndApiService.fetch("rule-sections/#{params[:index]}")
    else
      @rules = DndApiService.fetch("rule-sections")
    end
    render json: @rules
  end
end
