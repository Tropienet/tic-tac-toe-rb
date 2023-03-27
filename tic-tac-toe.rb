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
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def logPlayers
    puts @player1.logPlayerName
    puts @player2.logPlayerName
  end

end

player1 = Player.new("tin", "x")
player2 = Player.new("Toni", "o")

game = Game.new(player1, player2)

game.logPlayers