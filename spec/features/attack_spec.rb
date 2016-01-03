
describe 'attack' do


it "should allow player 1 to attack player 2 and confirm the attack" do
sign_in_and_play
click_button('Attack')
expect(page).to have_content 'Tom Attacked Chris'
end


end
