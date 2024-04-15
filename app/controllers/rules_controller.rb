class RulesController < ApplicationController
  def show
    @rule = DndApiService.fetch("rule-sections/#{params[:index]}")
  end
end
