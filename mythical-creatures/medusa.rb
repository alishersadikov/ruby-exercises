class Medusa
  attr_reader :name, :statues

  def initialize(name)
    @name = name
    @statues = []
  end

  def empty?
    true if @statues.count == 0
  end

  def stare(victim)
    victim = 
    @statues << victim
  end


end

class Person
  attr_reader :name

  def initialize(name, stoned = false)
    @name = name
    @stoned = stoned
  end

  def stoned?
    @stoned
  end
end
