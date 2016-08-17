class Money
  def initialize
    @money = 0
  end

  def amount
    @money
  end

  def earn(amount)
    @money += amount
  end

  def spend(amount)
    if @money >= amount
      @money -= amount
    else
      "You can't spend what you don't have"
    end
  end
end
