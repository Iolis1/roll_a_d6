class CharactersController < ApplicationController
  # app/controllers/characters_controller.rb
  require 'combine_pdf'
  require 'prawn'
  
  def download_character_sheet
    @character = Character.find(params[:id])
    template = "#{Rails.root}/app/assets/pdf/DnD_5E_CharacterSheet - Form Fillable.pdf"
    
    pdf = CombinePDF.load(template)
    filler_pdf = Prawn::Document.new
    filler_pdf.text_box @character.name, at: [100, 700], size: 12

  
    pdf.pages.each_with_index do |page, index|
      page << CombinePDF.parse(filler_pdf.render).pages[index]
    end
  
    send_data pdf.to_pdf, filename: 'character_sheet.pdf', type: 'application/pdf', disposition: 'inline'
  end
  
def new
  @races = DndApiService.fetch('races')  # Fetches all races
  @classes = DndApiService.fetch('classes')  # Fetches all classes
  @character = Character.new(strength: 15, dexterity: 14, constitution: 13, intelligence: 12, wisdom: 10, charisma: 8)
end

def edit
  @character = Character.find(params[:id])
end


def update
  @character = Character.find(params[:id])
  total_points_added = character_params.values_at(:strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma).map.with_index do |val, index|
    val.to_i - @character.attributes.values_at("strength", "dexterity", "constitution", "intelligence", "wisdom", "charisma")[index]
  end.sum

  if total_points_added > 3
    flash.now[:alert] = "You can only add up to 3 points in total."
    render :edit
  elsif @character.update(character_params)
    if params[:commit] == "Commit Points and Level Up"
      level_up_character
    end
    redirect_to @character, notice: 'Character successfully updated and leveled up.'
  else
    render :edit
  end
end


def index
  @characters = Character.all
end

def create
  @character = Character.new(character_params)
  @character.user = current_user

  respond_to do |format|
    if @character.save
      format.html { redirect_to @character, notice: 'Character was successfully created.' }
      format.json { render :show, status: :created, location: @character }
    else
      format.html { render :new }
      format.json { render json: @character.errors, status: :unprocessable_entity }
    end
  end
end

def destroy
  @character = Character.find(params[:id])
  @character.destroy!
  respond_to do |format|
    format.html { redirect_to characters_path, notice: 'Character successfully deleted.' }
    format.json { head :no_content }
  end
end


def show
  begin
    @character = Character.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    flash[:alert] = "Character not found."
    redirect_to characters_path
  end
end


private

def character_params
  params.require(:character).permit(:name, :race, :char_class, :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma)
end

def level_up_character
  if @character.level < 22
    @character.increment!(:level)
  end
end
end