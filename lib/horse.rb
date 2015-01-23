class Horse
  def initialize(name, rank = 0)
    @name = name
    @rank = rank
  end

  attr_reader :name
  attr_writer :rank

  def graze(value = 1)
    puts 'nom' * value
  end

  def battle!(enemy)
    puts "#{enemy.name}, that's my apple!"
    value = rand(-2..3)
    enemy.rank -= value
    @rank += value
  end
end
