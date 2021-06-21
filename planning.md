# Two-O-Player Math Game

## Nouns

- Player 
- Math
- Game
- turns
- question

------------------------------------------------------------------
## Roles

- Player:
  class will keep track of score using instance variables, will use attr_accessor to read / write scores at the end of a turn. does not require any parameters for instatiation as scores will be instantiated as 3/3 every new game
  
  class Player
    attr_accessor :score
    def instantiate()
      @score = 3
    end

    def to_s
      puts "P" 
    end
  end

- Questions/Math:
  class will have a method that generates random numbers between 1 - 20 and two instance variables to hold the numbers
  will use a formatting method to print equations to screen on each turn. will instantiate both numbers as values generated from the rand method and will set them again at the start of each turn. will obtain user input to answer question and then using another method, print a relevant response

  def Questions
    attr_accessor :num1, :num2
    def instantiate()
    @num1 = rand()
    @num2 = rand()
    end

    def rand()
      Math.floor(Math.random() * 20)
    end

    def get_question()
      puts "What does #{self.num1} plus #{self.num2} equal?"
    end

    def get_answer()
      answer = gets.chomp
    end

    def set_nums()
      @num1 = rand()
      @num2 = rand()
    end


  end

- Game/Turns:
  will contain the game loop keeping track of player turns, will need to be instantiated with current_player for the first turn. will have a method for printing out the winner of the game once a player loses. Will have a method to print current scores at the end of a turn. will also keep track of player names, input at the start of the game
------------------------------------------------------------------

## Details

- start with 3 lives each
- answer wrong and lose a life
- at the end of each turn game outputs current scores for both players
- once a player loses all 3 lives the game ends and announces who won and what the other players score is