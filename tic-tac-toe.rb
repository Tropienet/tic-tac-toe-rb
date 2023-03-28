class Player
  def initialize(name, symbol)
    @name = name
    @symbol = symbol
  end

  public
  def logPlayerName
    puts @name
  end
end

class Game
  @@gameboard = [[0,1,2],
                 [3,4,5],
                 [6,7,8]]

  public
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def logPlayers
    puts @player1.logPlayerName
    puts @player2.logPlayerName
  end

  def displayBoard
    @@gameboard.each_with_index do |row, index|
      row.each_with_index do |tile, index|
        print tile
        if index == 2
          print "\n"
        end
      end
    end
  end
end

player1 = Player.new("tin", "x")
player2 = Player.new("Toni", "o")

game = Game.new(player1, player2)

game.displayBoard