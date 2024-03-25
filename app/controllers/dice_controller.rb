# app/controllers/dice_controller.rb
class DiceController < ApplicationController
  def roll
    @result = rand(1..6)
    respond_to do |format|
      format.js
    end
  end
end
