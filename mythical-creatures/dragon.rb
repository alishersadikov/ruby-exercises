class Dragon
  attr_reader :name, :rider, :color

  def initialize(name, color, rider)
    @name = name
    @color = color
    @rider = rider
    @food = 0
    @hungry = true
  end

  def hungry?
    @hungry
  end

  def eat
    @food += 1
    if @food >= 3
      @hungry = false
    else
      @hungry = true
    end
  end
end
