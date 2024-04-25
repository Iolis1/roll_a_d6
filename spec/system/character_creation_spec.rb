require 'rails_helper'

RSpec.feature "Character Creation", type: :feature, js: true, vcr: true do
  scenario "allows a user to create a new character" do
    # Visit the new character page
    visit new_character_path

    # Fill in the form
    fill_in 'Name', with: 'Gandalf'
    select 'Human', from: 'Race'
    select 'Wizard', from: 'Class'
    fill_in 'Strength', with: '18'
    fill_in 'Dexterity', with: '12'
    fill_in 'Constitution', with: '15'
    fill_in 'Intelligence', with: '20'
    fill_in 'Wisdom', with: '18'
    fill_in 'Charisma', with: '10'

    # Submit the form
    click_button 'Create Character'

    # Expectations
    expect(page).to have_text 'Character was successfully created.'
    expect(page).to have_text 'Gandalf'
    expect(page).to have_text 'Human'
    expect(page).to have_text 'Wizard'
  end
end
