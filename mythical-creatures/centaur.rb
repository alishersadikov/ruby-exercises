class Centaur
  attr_reader :name, :breed

  def initialize(name, breed)
    @name = name
    @breed = breed
    @cranky_status = false
    @standing_status = true
    @laying_status = false
    @actions = 0
  end

  def shoot
    if @laying_status == true
      "NO!"
    elsif @cranky_status == false && @actions < 3
      @actions += 1
      cranky?
      "Twang!!!"
    else
      @cranky_status = true
      "NO!"
    end
  end

  def run
    if @laying_status == true
      "NO!"
    elsif @cranky_status == false
      @actions += 1
      #cranky?
      @cranky_status = true
      return "Clop clop clop clop!!!"
    else
      "NO!"
      # require 'pry'; binding.pry
    end
  end

  def cranky?
    if @actions >= 3
      @cranky_status = true
    end
    @cranky_status
  end

  def standing?
    @standing_status
  end

  def laying?
    @laying_status
  end

  def lay_down
    @laying_status = true
    @standing_status = false
  end

  def stand_up
    @standing_status = true
    @laying_status = false
  end

  def sleep
    if @laying_status == true
      @cranky_status = false
      @actions = 0
    else
      "NO!"
    end
  end

  def drink_potion
    if  @cranky_status == false && @standing_status == true
        @cranky_status = true
    elsif
        @cranky_status == true && @standing_status == true
        @actions = 0
        @cranky_status = false
     else
       "NO!"
     end
  end


end
