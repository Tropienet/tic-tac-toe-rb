# frozen_string_literal: true

class Player
  def initialize(name, symbol)
    @name = name
    @symbol = symbol
  end

  def log_player_name
    puts @name
  end
end

class Game
  @gameboard = [[0, 1, 2],
                [3, 4, 5],
                [6, 7, 8]]
  @player_turn = 0

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def log_players
    puts @player1.logPlayerName
    puts @player2.logPlayerName
  end

  def display_board
    @gameboard.each_with_index do |row, _index|
      row.each_with_index do |tile, index|
        print tile
        print "\n" if index == 2
      end
    end
  end

  def replace_tile_with_symbol()
      puts 'Please enter the number of the tile on which you wish to place your symbol'
      tile = gets.chomp
      @gameboard.each {|row| 
      row.each {
        
      }}
  end

  def place_symbol_on_board
    if @player_turn.zero?
      @player_turn = 1
     replace_tile_with_symbol()
    else
      @player_turn = 0
      replace_tile_with_symbol()
    end
  end
end

player1 = Player.new('tin', 'x')
player2 = Player.new('Toni', 'o')

game = Game.new(player1, player2)

game.display_board
