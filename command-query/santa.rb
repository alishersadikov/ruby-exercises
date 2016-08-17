class Santa
  def initialize
    @fits = true
    @eaten_cookies = 0
  end

  def eats_cookies
    @eaten_cookies += 1
  end

  def fits?
    if @eaten_cookies >= 3
      @fits == false
    else
      true
    end
  end 
end
