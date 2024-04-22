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


def create
  @character = Character.new(character_params)
  if @character.save
    redirect_to character_path(@character), notice: 'Character successfully created.'
  else
    render :new, status: :unprocessable_entity
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
  params.require(:character).permit(:name, :race, :class_name, :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma)
end

end
