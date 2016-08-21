class Werewolf
  attr_reader :name, :location

  def initialize(name, location = "Werewolf", hungry = false)
    @name = name
    @location = location
    @human = true
    @wolf = false
    @hungry = hungry
  end

  def human?
    @human
  end

  def change!
    if    @human == true
          @human = false
          @wolf = true
          @hungry = true
    elsif @human == false
          @human = true
          @wolf = false
    end
  end

  def hungry?
    @hungry
  end

  def wolf?
    @wolf
  end

  def consume(victim)
    if @human == true
      "Can't consume! Yuck!"
    else
      victim.status = :dead
    end
  end
end
