class Messages
  attr_accessor :welcome
  def initialize
    @correct = "YES! You are correct."
    @wrong = "Seriously? No!"
    self.welcome = "Welcome to math game"
  end
  def answer(wrong)
    return wrong ? @wrong : @correct
  end
  def get_score(players)
    "P1: #{players[0].lives}/#{players[0].total_lives} vs P2: #{players[1].lives}/#{players[1].total_lives}"
  end
  def gameover_message(players)
    player = players[0].lives != 0 ? players[0] : players[1]
    "Player #{player.name} wins with a score of #{player.lives}/#{player.total_lives}\n------ GAME OVER ------\nGood bye!"
  end
  def get_separator
    "------ NEW TURN ------"
  end
end