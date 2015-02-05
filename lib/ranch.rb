require_relative 'horse'
require_relative 'barn'
require_relative 'pasture'

socks = Horse.new('Socks', 10)
slippers = Horse.new('Slippers')

barn = Barn.new([socks, slippers])

buster = Horse.new('Buster', -5)
trigger = Horse.new('Trigger', 9)

pasture = Pasture.new([buster, trigger])

barn.turn_out!(pasture)
pasture.turn_in!(barn)
