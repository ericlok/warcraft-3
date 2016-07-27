class Barracks 

  attr_reader :gold, :food, :health_points, :lumber

  STARTING_HEALTH = 500
  STARTING_GOLD = 1000
  STARTING_FOOD = 80
  STARTING_LUMBER = 500

  def initialize
    @health_points = STARTING_HEALTH
    @gold = STARTING_GOLD
    @food = STARTING_FOOD
    @lumber = STARTING_LUMBER
  end

  def can_train_footman?
    if food >= 2 && gold >= 135
      return true
    end
  end

  def train_footman
    @gold -= 135
    @food -= 2
    if can_train_footman? 
      Footman.new
    end
  end

  def can_train_peasant?
    if food >= 5 && gold >= 90
      return true
    end
  end

  def train_peasant
    @gold -= 90
    @food -= 5
    if can_train_peasant? 
      Peasant.new
    end
  end 

  def damage(damage)
    @health_points -= damage
  end

end
