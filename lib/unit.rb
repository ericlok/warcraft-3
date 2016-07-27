class Unit 

  attr_reader :health_points, :attack_power

  def initialize(health_points, attack_power)
    @health_points = health_points
    @attack_power = attack_power
  end

  def damage(damage)
    @health_points -= damage
  end

  def attack!(enemy_unit)
    if (enemy_unit).dead?
      enemy_unit.damage(@attack_power)
    else
      false
    end
  end

  def dead?
    health_points == 0
  end

end