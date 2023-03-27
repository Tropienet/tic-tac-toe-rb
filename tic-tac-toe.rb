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
  def getPlayers
    player1 = Player.new("Tin", "x")
    player2 = Player.new("SomeoneElse", "o")
  end

end

game = Game.new

game.getPlayers

game.logPlayers