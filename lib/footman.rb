# http://classic.battle.net/war3/human/units/footman.shtml

class Footman < Unit
  HEALTH_POINTS = 60
  ATTACK_POWER = 10

  def initialize
    super(HEALTH_POINTS, ATTACK_POWER)
    # Need to default the 2 instance variables here
    # Also also give code outside this class access to these variables (via attr_reader, attr_writer or attr_accessor)
  end

  def attack!(enemy_unit)
    #make a variable
    # regular_damage = enemy_unit.damage
    if enemy_unit.is_a?(Barracks)
      enemy_unit.damage(@attack_power/2)
    else
      enemy_unit.damage(@attack_power)
    end

  
    enemy_unit.damage(determine_attack_power(enemy_unit))
  end

private
  def determine_attack_power(enemy_unit)
    power = @attack_power
    if enemy_unit.is_a?(Barracks)
      power = @attack_power / 2
    end
    power
  end

end
