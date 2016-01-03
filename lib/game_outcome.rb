def no_attacks
  if @game.array[1].attack_type[0]==nil && @game.array[0].attack_type[0]==nil

    true
  end
end

def player_one_win
  if @game.array[0].attack_type[0]=="Rock" && @game.array[1].attack_type[0]=="Scissors" ||
    @game.array[0].attack_type[0]=="Paper" && @game.array[1].attack_type[0]=="Rock" ||
    @game.array[0].attack_type[0]=="Scissors" && @game.array[1].attack_type[0]=="Paper"

    true
  end
end

def player_two_win
  if  @game.array[1].attack_type[0]=="Rock" && @game.array[0].attack_type[0]=="Scissors" ||
    @game.array[1].attack_type[0]=="Paper" && @game.array[0].attack_type[0]=="Rock" ||
    @game.array[1].attack_type[0]=="Scissors" && @game.array[0].attack_type[0]=="Paper"

    true
  end
end

def game_draw
  if @game.array[1].attack_type[0]== @game.array[0].attack_type[0]

    true
  end
end
