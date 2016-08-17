class LeatherChair
  def initialize
    @condition = false
  end

  def faded?
    @condition
  end

  def expose_to_sunlight
    @condition = true
  end
end
