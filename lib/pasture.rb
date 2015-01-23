class Pasture
  def initialize(horses = [])
    @horses = horses
  end

  attr_writer :horses

  def turn_in(barn)
    @horses.size.times do
      attacker, defender = @horses.sample(2)
      attacker.battle!(defender)
    end

    barn.horses += @horses
    @horses.clear
  end
end
