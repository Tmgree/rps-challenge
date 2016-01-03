require 'player'

describe Player do


 describe "#name" do
 it "should show the player's name" do
   player=Player.new("Tom")
   expect(player.name).to eq "Tom"
 end
end
describe "#hp" do
  it "should show the players hp" do
    player=Player.new("Tom")
    expect(player.hp).to eq Player::DEFAULT_HP
  end

end
describe "reduce_hp" do
   before :each do
     srand(3)
  end

  it "should reduce the hp by attack points when hit by an attack" do

    player=Player.new("Tom")
    expect{player.reduce_hp}.to change{player.hp}.by(-rand(1..10))
  end
end





end
