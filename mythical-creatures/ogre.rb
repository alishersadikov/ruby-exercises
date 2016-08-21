class Ogre
  attr_reader :name, :home, :encounter_counter

  def initialize(name, home = 'Swamp')
    @name = name
    @home = home
    @swings = 0
    @encounter_counter = 0
  end

  def encounter(human)
    human.encounter_counter += 1
    @swings = human.encounter_counter / 3
    @encounter_counter = human.encounter_counter
  end

  def swings
    @swings
  end

  def swing_at(human)
    @swings += 1
  end

  def apologize(human)
    human.encounter_counter = 0
  end
end

class Human
  attr_reader :name
  attr_accessor :encounter_counter

  def initialize
    @name = 'Jane'
    @encounter_counter = 0
  end

  def notices_ogre?
    true if @encounter_counter >= 3
  end

  def knocked_out?
    if @encounter_counter == 6
      true
    elsif
      @encounter_counter == 0
      false
    end
  end
end
