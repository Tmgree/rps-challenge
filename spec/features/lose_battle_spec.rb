require 'player'
describe 'lose_battle' do

  it 'should tell you when a player has lost a battle' do
    allow(Kernel).to receive(:rand).and_return(10)
  sign_in_and_play
end_game

  expect(page).to have_content ('GAME OVER Chris Lost the Game!')
end
end
