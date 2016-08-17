class Item
  attr_accessor :product, :deal

  def initialize(product, deal)
    @product = product
    @deal = 100 * deal[:discount] / deal[:price]
  end
end
