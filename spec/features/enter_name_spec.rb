
describe 'enter_name test' do
  it 'should display the players name' do
    sign_in_and_play
    expect(page).to have_content 'Tom Vs. Chris'
  end



end
