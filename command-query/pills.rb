class Pills
  def initialize
    @pill_quantity = 60
  end

  def count
    @pill_quantity
  end

  def pop
    @pill_quantity -= 1
  end


end
