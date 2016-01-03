require 'spec_helper'

feature 'Game Over' do
  before do
    sign_in_and_play
    click_button('Rock')
  end
  scenario 'it must display the move the solo player played on the game over page' do
    expect(page).to have_content('Tom Used Rock')
  end

  scenario 'it must display the move the Computer player played on the game over page' do
    expect(page).to have_content('Computer Used Rock')
  end
end
