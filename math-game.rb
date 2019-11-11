require('./game')
require('./player')
require('./messages')

# Initialize players from Player Class
p1 = Player.new("P1", 3)
p2 = Player.new("P2", 3)
# Message Class
m = Messages.new
# Game Class
g = Game.new([p1, p2], m)

puts m.welcome
puts m.get_separator
while !g.game_over
  q = g.create_question
  puts q[:q]
  a = gets.chomp
  wrong = q[:a] != a.to_i
  g.update_player_score(wrong)
  puts g.get_reply(wrong)
  puts g.get_score
  puts m.get_separator
end
puts g.game_over_msg