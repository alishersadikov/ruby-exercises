class Student
  def initialize
    @grade = 'C'
    @dedication = 0
  end

  def grade
    @grade
  end

  def study
    @dedication += 1
    return @grade = 'D'   if @dedication <= 0
    return @grade = 'B'   if @dedication == 1
    return @grade = 'A'   if @dedication >= 2
    return @grade = 'C'
  end

  def slack_off
    @dedication -= 1
    return @grade = 'B'   if @dedication >= 2
    return @grade = 'D'   if @dedication == -1
    return @grade = 'F'   if @dedication <= -2
  end
end
