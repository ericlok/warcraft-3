class SiegeEngine < Unit
  
  HEALTH_POINTS = 400
  ATTACK_POWER = 50

  def initialize
    super(HEALTH_POINTS, ATTACK_POWER)
  end

  def attack!(enemy_unit)
    if enemy_unit.is_a?(Barracks)
      enemy_unit.damage(@attack_power * 2)
    end
  end



end