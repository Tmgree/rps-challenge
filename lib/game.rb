require_relative 'player'
class Game
  attr_reader :player1, :player2, :array, :player_lost

  def initialize(player1, player2)
    @player1=player1
    @player2=player2
    @array=[player1, player2]
    @player_lost=[]


  end

  def attack_rock(player)
    player.attack_type << "Rock"
    switch_turn
  end
  def attack_paper(player)
    player.attack_type << "Paper"
    switch_turn
  end
  def attack_scissors(player)
    player.attack_type << "Scissors"
    switch_turn
  end

  def switch_turn
   @array = array.reverse
  end

  def random_attack(player)
    x=rand(1..3)
    if x==1
    player.attack_type << "Rock"
    elsif x==2
      player.attack_type << "Paper"
    else
      player.attack_type << "Scissors"
    end
    switch_turn
  end





end
