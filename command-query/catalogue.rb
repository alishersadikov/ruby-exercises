require 'pry'

class Catalogue
  def initialize
    @catalogue = []
  end

  def <<(product)
    @catalogue << product
  end


  def cheapest
    products_by_price = @catalogue.sort_by do |item|
      item.price
    end
    products_by_price.first
  end


end
