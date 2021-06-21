require_relative "Questions_class"

class Game
  attr_accessor :current_player, :player1, :player2, :next_player
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = player1
    @next_player = player2
  end

  def game_loop()
    question = Questions.new
    while @current_player.score != 0
      question.set_nums()
      puts "    ---NEW TURN---"
      print "#{@current_player}: "
      question.get_question
      score = question.get_answer
      current_player.score= score
      puts "-------------------------------------------------"
      puts "    #{current_score()}"
      puts "-------------------------------------------------"
      puts ""
      if current_player.score == 0
        winner()
        break
      end
      if current_player == player1
        @current_player = player2
        @next_player = player1
      else
        @current_player = player1
        @next_player = player2
      end
    end
  end
  
  def current_score()
    "#{player1} #{player1.score}/3 vs. #{player2} #{player2.score}/3"
  end

  def winner()
    puts "    ---GAME OVER---"
    puts "#{next_player} wins with #{next_player.score}/3"
  end

end
