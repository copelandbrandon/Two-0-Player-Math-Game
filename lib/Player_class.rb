class Player
  attr_reader :score
  @@num_players = 0
  def initialize()
    @score = 3
    @@num_players += 1
    @player_num = @@num_players
  end

  def score=(num)
    @score = self.score - num
  end

  def to_s
    "Player #{@player_num}"
  end
end

