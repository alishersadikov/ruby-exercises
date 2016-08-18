class Wizard
  attr_reader :name, :beard_status

  def initialize(name, bearded: true)
    #require 'pry'; binding.pry
    @name = name
    @bearded = bearded
    @spell = 0
  end

  def bearded?
    @bearded
  end

  def incantation(message)
    "sudo #{message}"
  end

  def rested?
    false if @spell >= 3
    true if @spell < 3
  end

  def cast
    @spell += 1
    "MAGIC MISSILE!"
  end
end
