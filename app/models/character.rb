# app/models/character.rb
class Character < ApplicationRecord
  belongs_to :user
  validates :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 20}
  validates :level, inclusion: {in: 1..22}, on: :update
  validates :name, presence: true
  # Set default level on new records
  before_create :set_default_level

  private

  def set_default_level
    self.level ||= 1  # Default level is 1 if not otherwise specified
  end
end
