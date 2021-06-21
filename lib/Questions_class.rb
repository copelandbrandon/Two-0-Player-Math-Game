class Questions
  attr_accessor :num1, :num2
  def initialize()
    @num1 = 0
    @num2 = 0
  end

  def random()
    (rand() * 20).floor()
  end

  def get_question()
    puts "What does #{self.num1} plus #{self.num2} equal?"
  end

  def get_answer()
    answer = gets.chomp

    if answer.to_i == self.num1 + self.num2
      puts "YES! Very well done you calculated #{self.num1} + #{self.num2} 👏️👏️👏️👏️"
      score = 0
    elsif answer.to_i != self.num1 + self.num2
      puts "Heck naw my dawg, you lose a point 💔️💔️💔️💔️"
      score = 1
    end
  end

  def set_nums()
    @num1 = random()
    @num2 = random()
  end
end
