require 'pry'
class Cupcakes
  def initialize
    @cupcakes = []
  end

  def sweetest
    cupcakes_by_sweetness = @cupcakes.sort_by do |cupcake|
      cupcake.sugar
    end
    cupcakes_by_sweetness.last
  end

  def <<(cupcake)
    @cupcakes << cupcake
  end
end
