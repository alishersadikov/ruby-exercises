class Tire
  def initialize
    @flatness_condition = false
  end

  def flat?
    @flatness_condition
  end

  def blow_out
    @flatness_condition = true
  end
end
