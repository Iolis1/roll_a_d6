require 'rails_helper'
RSpec.describe Character, type: :model do

    it 'is invalid with character not number for strength' do
        character = Character.new(strength: 'test')
        character.valid?
        expect(character.errors[:strength]).to include("is not a number")
    end

    it 'is invalid with character not number for dexterity' do
        character = Character.new(dexterity: 'test')
        character.valid?
        expect(character.errors[:dexterity]).to include("is not a number")
    end

    it 'is invalid with character not number for constitution' do
        character = Character.new(constitution: 'test')
        character.valid?
        expect(character.errors[:constitution]).to include("is not a number")
    end

    it 'is invalid with character not number for intelligence' do
        character = Character.new(intelligence: 'test')
        character.valid?
        expect(character.errors[:intelligence]).to include("is not a number")
    end

    it 'is invalid with character not number for wisdom' do
        character = Character.new(wisdom: 'test')
        character.valid?
        expect(character.errors[:wisdom]).to include("is not a number")
    end

    it 'is invalid with character not number for charisma' do
        character = Character.new(charisma: 'test')
        character.valid?
        expect(character.errors[:charisma]).to include("is not a number")
    end

    it 'is invalid without a name' do
        character = Character.new(name: nil)
        character.valid?
        expect(character.errors[:name]).to include("can't be blank")
    end

    it 'is invalid without a strength' do
    character = Character.new(strength: nil)
    character.valid?
    expect(character.errors[:strength]).to include("can't be blank")
    end

    it 'is invalid without a dexterity' do
        character = Character.new(dexterity: nil)
        character.valid?
        expect(character.errors[:dexterity]).to include("can't be blank")
    end

    it 'is invalid without a constitution' do
        character = Character.new(constitution: nil)
        character.valid?
        expect(character.errors[:constitution]).to include("can't be blank")
    end

    it 'is invalid without an intelligence' do
        character = Character.new(intelligence: nil)
        character.valid?
        expect(character.errors[:intelligence]).to include("can't be blank")
    end

    it 'is invalid without a wisdom' do
        character = Character.new(wisdom: nil)
        character.valid?
        expect(character.errors[:wisdom]).to include("can't be blank")
    end

    it 'is invalid without a charisma' do
        character = Character.new(charisma: nil)
        character.valid?
        expect(character.errors[:charisma]).to include("can't be blank")
    end

        
    it 'is invalid without a user' do
        character = Character.new(user: nil)
        character.valid?
        expect(character.errors[:user]).to include("must exist")
    end

    it 'is invalid with negative strength' do
        character = Character.new(strength: -1)
        character.valid?
        expect(character.errors[:strength]).to include("must be greater than or equal to 0")
    end

    it 'is invalid with negative dexterity' do
        character = Character.new(dexterity: -1)
        character.valid?
        expect(character.errors[:dexterity]).to include("must be greater than or equal to 0")
    end

    it 'is invalid with negative constitution' do
        character = Character.new(constitution: -1)
        character.valid?
        expect(character.errors[:constitution]).to include("must be greater than or equal to 0")
    end

    it 'is invalid with negative intelligence' do
        character = Character.new(intelligence: -1)
        character.valid?
        expect(character.errors[:intelligence]).to include("must be greater than or equal to 0")
    end

    it 'is invalid with negative wisdom' do
        character = Character.new(wisdom: -1)
        character.valid?
        expect(character.errors[:wisdom]).to include("must be greater than or equal to 0")
    end

    it 'is invalid with negative charisma' do
        character = Character.new(charisma: -1)
        character.valid?
        expect(character.errors[:charisma]).to include("must be greater than or equal to 0")
    end

    it 'is invalid with non-integer strength' do
        character = Character.new(strength: 1.5)
        character.valid?
        expect(character.errors[:strength]).to include("must be an integer")
    end

    it 'is invalid with non-integer dexterity' do
        character = Character.new(dexterity: 1.5)
        character.valid?
        expect(character.errors[:dexterity]).to include("must be an integer")
    end

    it 'is invalid with non-integer constitution' do
        character = Character.new(constitution: 1.5)
        character.valid?
        expect(character.errors[:constitution]).to include("must be an integer")
    end

    it 'is invalid with non-integer intelligence' do
        character = Character.new(intelligence: 1.5)
        character.valid?
        expect(character.errors[:intelligence]).to include("must be an integer")
    end

    it 'is invalid with non-integer wisdom' do
        character = Character.new(wisdom: 1.5)
        character.valid?
        expect(character.errors[:wisdom]).to include("must be an integer")
    end

    it 'is invalid with non-integer charisma' do
        character = Character.new(charisma: 1.5)
        character.valid?
        expect(character.errors[:charisma]).to include("must be an integer")
    end

    it 'is invalid with strength greater than 20' do
        character = Character.new(strength: 21)
        character.valid?
        expect(character.errors[:strength]).to include("must be less than or equal to 20")
    end

    it 'is invalid with dexterity greater than 20' do
        character = Character.new(dexterity: 21)
        character.valid?
        expect(character.errors[:dexterity]).to include("must be less than or equal to 20")
    end

    it 'is invalid with constitution greater than 20' do
        character = Character.new(constitution: 21)
        character.valid?
        expect(character.errors[:constitution]).to include("must be less than or equal to 20")
    end

    it 'is invalid with intelligence greater than 20' do
        character = Character.new(intelligence: 21)
        character.valid?
        expect(character.errors[:intelligence]).to include("must be less than or equal to 20")
    end

    it 'is invalid with wisdom greater than 20' do
        character = Character.new(wisdom: 21)
        character.valid?
        expect(character.errors[:wisdom]).to include("must be less than or equal to 20")
    end

    it 'is invalid with charisma greater than 20' do
        character = Character.new(charisma: 21)
        character.valid?
        expect(character.errors[:charisma]).to include("must be less than or equal to 20")
    end

    it 'is valid with a name, strength, dexterity, constitution, intelligence, wisdom, charisma, level, and user' do
    user = User.create(email: 'test@email.com', password: 'password')
    character = Character.new(name: 'Gandalf', strength: 18, dexterity: 12, constitution: 15, intelligence: 20, wisdom: 18, charisma: 10, level: 1, user: user)
    character.valid?
    expect(character.errors).to be_empty
    end
end
