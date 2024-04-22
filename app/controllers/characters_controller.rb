class CharactersController < ApplicationController
  # app/controllers/characters_controller.rb

def new
  @character = Character.new

end

def edit
  @character = Character.find(params[:id])
  
end

def create
  @character = Character.new(character_params)
  if @character.save
    redirect_to @character
  else
    render :new
  end
end

def show
end


end
