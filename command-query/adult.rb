class Adult
  def initialize
    @drinks = 0
  end

  def consume_an_alcoholic_beverage
    @drinks += 1
  end

  def sober?
    if @drinks >= 3
      @sober = false
    else
      true
    end
  end
end
