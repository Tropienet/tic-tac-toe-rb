class Player
  def initialize(name, symbol)
    @name = name
    @symbol = symbol
  end

  def show_player
    puts "Player name is #{@name} and symbol is #{@symbol}"
  end
end

class Board
  @@board = [ 1 , 2 , 3 , 4 , 5 , 6 , 7 , 8 , 9 ]

  def show_board
    puts "Board is \n
          #{@@board[0]} | #{@@board[1]} | #{@@board[2]} \n
          #{@@board[3]} | #{@@board[4]} | #{@@board[5]} \n
          #{@@board[6]} | #{@@board[7]} | #{@@board[8]} \n"
  end

end

tin = Player.new("tin", "x")
gameboard = Board.new
gameboard.show_board


tin.show_player