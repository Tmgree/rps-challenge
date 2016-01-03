
feature 'hit_points' do


scenario 'should reduce hit points when hit by an attack' do
  sign_in_and_play
  click_button('Attack')
  visit('/play')
  click_button('Attack')
  expect(page).to have_content "Chris Attacked Tom"
end


end
