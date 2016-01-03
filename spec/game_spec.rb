require 'game'

describe Game do

let(:player1) {double :player, hp: 30 }
let(:player2) {double :player, hp: 30 }
let(:player_dead) {double :player, hp: 0 }
let(:game) { described_class.new(player1, player2) }

it 'should reduce hp if a player is attacked' do
expect(game.player2).to receive :reduce_hp
game.attack(game.player2)
end


describe "switch_turn" do
  it "should switch turns after a player has attacked" do
    allow(player2).to receive(:reduce_hp)
    game.attack(player2)
    expect(game.array[0]).to eq player2
  end

end

describe "game_over?" do
  it "should return true when a player reaches 0 hp" do
    game1=Game.new(player_dead, player2)
    expect(game1.game_over?).to eq true
  end
  it "should not return true when game is initialized" do
    game1=Game.new(player1, player2)
    expect(game.game_over?).to eq false
  end
end





end
