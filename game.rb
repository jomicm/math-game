class Game
  attr_accessor :players, :messages, :turn, :game_over, :score, :correct_answer, :wrong_answer
  def initialize(p, m)
    self.players = p
    self.messages = m
    self.turn = self.set_turn
    self.game_over = false
  end
  def set_turn
    rand(2)
  end
  def create_question
    n1 = self.get_random_number
    n2 = self.get_random_number
    question = "Player #{self.players[@turn].name}: What does #{n1} plus #{n2} equal?"
    {q: question, a: n1 + n2}
  end
  def update_player_score(lose)
    if (lose)
      self.players[@turn].lose_life
      if (self.players[@turn].lives == 0)
        self.game_over = true 
      end
    end
    @turn = @turn == 1 ? 0 : 1
  end
  def get_score
    self.messages.get_score(self.players)
  end
  def get_reply(wrong)
    self.messages.answer(wrong)
  end
  def get_random_number
    rand(21) + 1
  end
  def game_over_msg
    self.messages.gameover_message(self.players)
  end
end