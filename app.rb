require 'sinatra/base'
require './lib/player'
require './lib/game'



class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end
  get'/get_names' do
    erb(:get_names)
  end
  get'/get_name' do
    erb(:get_name)
  end



  get '/play' do
    @game=$game
    if @game.array[1].attack_type[0]==nil && @game.array[0].attack_type[0]==nil
    erb(:play)
  elsif @game.array[0].attack_type[0]=="Rock" && @game.array[1].attack_type[0]=="Scissors" ||
    @game.array[0].attack_type[0]=="Paper" && @game.array[1].attack_type[0]=="Rock" ||
    @game.array[0].attack_type[0]=="Scissors" && @game.array[1].attack_type[0]=="Paper"
    erb(:game_over1)
  elsif @game.array[1].attack_type[0]=="Rock" && @game.array[0].attack_type[0]=="Scissors" ||
    @game.array[1].attack_type[0]=="Paper" && @game.array[0].attack_type[0]=="Rock" ||
    @game.array[1].attack_type[0]=="Scissors" && @game.array[0].attack_type[0]=="Paper"
    erb(:game_over2)
  elsif @game.array[1].attack_type[0]=="Rock" && @game.array[0].attack_type[0]=="Rock" ||
    @game.array[1].attack_type[0]=="Paper" && @game.array[0].attack_type[0]=="Paper" ||
    @game.array[1].attack_type[0]=="Scissors" && @game.array[0].attack_type[0]=="Scissors"
    erb(:game_overdraw)
  else
    erb(:play)
  end
  end




  get '/attack_rock' do
    @game=$game
    @game.attack_rock(@game.array[0])
    if @game.array[0].name=="Computer"
      @game.random_attack(@game.array[0])
    end
    erb(:attack)
  end

  get '/attack_paper' do
    @game=$game
    @game.attack_paper(@game.array[0])
    if @game.array[0].name=="Computer"
      @game.random_attack(@game.array[0])
    end
    erb(:attack)
  end

  get '/attack_scissors' do
    @game=$game
    @game.attack_scissors(@game.array[0])
    if @game.array[0].name=="Computer"
      @game.random_attack(@game.array[0])
  end
    erb(:attack)
  end

  post '/names' do
    p params
    player1 = Player.new(params[:player1])
    player2 = Player.new(params[:player2])
    $game = Game.new(player1, player2)
    redirect '/play'
  end
  post '/name' do
    p params
    player1 = Player.new(params[:player1])
    player2 = Player.new("Computer")
    $game = Game.new(player1, player2)
    redirect '/play_solo'
  end

  get '/play_solo' do
    @game=$game
    erb(:play_solo)
  end






  # start the server if ruby file executed directly
  run! if app_file == $0
end
