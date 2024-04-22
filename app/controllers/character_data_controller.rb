
class CharacterDataController < ApplicationController

  def index
    # This method will render the main Character Data page with dropdowns
  end

  # Methods to fetch data for each subcategory
  def ability_scores
    @ability_scores = DndApiService.fetch("ability-scores/#{params[:index]}")
    render json: @ability_scores
  end

  def skills
    @skills = DndApiService.fetch("skills/#{params[:index]}")
    render json: @skills
  end

  def languages
    @languages = DndApiService.fetch("languages/#{params[:index]}")
    render json: @languages
  end

  def proficiencies
    @proficiencies = DndApiService.fetch("proficiencies/#{params[:index]}")
    render json: @proficiencies
  end

  def alignments
    @alignments = DndApiService.fetch("alignments/#{params[:index]}")
    render json: @alignments
  end

  def backgrounds
    @backgrounds = DndApiService.fetch("backgrounds/#{params[:index]}")
    render json: @backgrounds
  end

end
