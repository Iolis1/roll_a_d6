# app/controllers/character_data_controller.rb
class CharacterDataController < ApplicationController
  def show
    data_type = params[:data_type]
    index = params[:index]
    valid_types = %w[ability-scores skills alignments backgrounds languages proficiencies]
    if valid_types.include?(data_type)
      @data = DndApiService.fetch("#{data_type}/#{params[:index]}")
      @data_type = data_type.gsub('-', ' ').capitalize
    else
      redirect_to codex_index_path, alert: "Invalid data type requested"
    end
  end
end
