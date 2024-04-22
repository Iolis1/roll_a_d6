class Character < ApplicationRecord
  belongs_to :user
  validates :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, presence: true, numericality: { only_integer: true }
end
