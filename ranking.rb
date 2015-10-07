class Ranking
  attr_accessor :rank
  def initialize(rank)
    rank = rank.to_i
    @rank = rank
  end

  def verify_ranking
    until @rank == 1 || @rank == 2 || @rank == 3
      puts 'Invalid ranking... Please try again'
      @rank = gets.chomp.to_i
    end
    self
  end

  def percentify
    case @rank
    when 1
      percentage = 0.20
    when 2
      percentage = 0.25
    when 3
      percentage = 0.30
    end
    percentage
  end
end
