class Player
  attr_accessor :name, :total_lives, :lives
  def initialize(n, tl)
    @name = n
    @lives = tl
    @total_lives = tl
  end
  def lose_life
    @lives -= 1
  end
end