# app/models/character.rb
class Character < ApplicationRecord
  belongs_to :user
  validates :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, presence: true, numericality: { only_integer: true }
  validates :level, inclusion: {in: 1..22}, on: :update

  # Set default level on new records
  before_create :set_default_level

  private

  def set_default_level
    self.level ||= 1  # Default level is 1 if not otherwise specified
  end
end
