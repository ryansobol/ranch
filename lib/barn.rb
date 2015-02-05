class Barn
  def initialize(horses = [])
    @horses = horses
  end

  attr_writer :horses

  def turn_out!(pasture)
    attacker, defender = @horses.sample(2)
    attacker.battle!(defender)

    pasture.horses += @horses
    @horses.clear
  end
end
