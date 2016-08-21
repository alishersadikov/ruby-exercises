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
    victim.stoned_status = true
    if @statues.count < 3
      @statues << victim
    else
      @statues.first.stoned_status = false
    end
  end 
end

class Person
  attr_reader :name
  attr_accessor :stoned_status

  def initialize(name, stoned_status = false)
    @name = name
    @stoned_status = stoned_status
  end

  def stoned?
    @stoned_status
  end
end
