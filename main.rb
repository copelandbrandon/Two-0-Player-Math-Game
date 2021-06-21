require "./lib/Player_class"
require "./lib/Questions_class"
require "./lib/Game_class"

player1 = Player.new
player2 = Player.new
new_game = Game.new(player1, player2)

new_game.game_loop
