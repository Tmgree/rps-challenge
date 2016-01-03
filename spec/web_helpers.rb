def sign_in_and_play
  visit('/')
  click_button('1p')
  fill_in 'player1', with: 'Tom'
  click_button('Lets Play!')
end

def end_game
  click_button('Attack')
  click_link('Play')
  click_button('Attack')
  click_link('Play')
  click_button('Attack')
  click_link('Play')
  click_button('Attack')
  click_link('Play')
  click_button('Attack')
  click_link('Play')
end
