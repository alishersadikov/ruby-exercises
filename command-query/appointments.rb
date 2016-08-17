class Appointments
  def initialize
    @slots = []
  end

  def at(time)
    @slots << time
  end

  def earliest
    @slots.min
  end
end
