# frozen_string_literal: true

class Player
  def initialize(name, symbol)
    @name = name
    @symbol = symbol
  end

  def display_name
    @name
  end

  def place_symbol
    @symbol
  end
end

class Game
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @gameboard = [[0, 1, 2],
                  [3, 4, 5],
                  [6, 7, 8]]
    @player_turn = 0
    @user_input = 0
    @current_player = @player1
  end

  def display_board
    @gameboard.each do |row|
      row.each do |tile|
        print "#{tile} "
      end
      print "\n"
    end
  end

  def change_board
    @gameboard.each_with_index do |row, row_index|
      row.each_with_index do |column, column_index|
        @gameboard[row_index][column_index] = @current_player.place_symbol if column == @user_input.to_i
      end
    end
  end

  def get_user_input
    @user_input = gets.chomp
    @user_input = gets.chomp while @user_input.length > 1
  end

  def check_for_winner
    if @gameboard[0][0] == @gameboard[0][1] && @gameboard[0][1] == @gameboard[0][2]
      return false
    elsif @gameboard[1][0] == @gameboard[1][1] && @gameboard[1][1] == @gameboard[1][2]
      return false
    elsif @gameboard[2][0] == @gameboard[2][1] && @gameboard[2][1] == @gameboard[2][2]
      return false
    elsif @gameboard[0][0] == @gameboard[1][0] && @gameboard[1][0] == @gameboard[2][0]
      return false
    elsif @gameboard[0][1] == @gameboard[1][1] && @gameboard[1][1] == @gameboard[2][1]
      return false
    elsif @gameboard[0][2] == @gameboard[1][2] && @gameboard[1][2] == @gameboard[2][2]
      return false
    elsif @gameboard[0][0] == @gameboard[1][1] && @gameboard[1][1] == @gameboard[2][2]
      return false
    elsif @gameboard[2][0] == @gameboard[1][1] && @gameboard[1][1] == @gameboard[0][2]
      return false
    end

    true
  end

  def change_player
    @current_player = if @current_player == @player1
                        @player2
                      else
                        @player1
                      end
  end

  def announce_winner
    puts "The winner is #{@current_player.display_name}"
  end
end

player1 = Player.new('tin', 'x')
player2 = Player.new('Toni', 'o')

game = Game.new(player1, player2)

while game.check_for_winner
  game.get_user_input
  game.change_board
  game.display_0board
  game.change_player
end

game.announce_winner
