class Hobbit
  attr_reader :name, :disposition, :age
  def initialize(name, disposition = "homebody")
    @name = name
    @disposition = disposition
    @age = 0
  end

  def celebrate_birthday
    @age += 1
  end

  def adult?
    true if @age > 32
  end

  def old?
    true
  end

  def has_ring?
    true if @name == 'Frodo'
  end

  def is_short?
    true
  end 
end
