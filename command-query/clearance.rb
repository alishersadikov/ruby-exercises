require 'pry'
class Clearance
  def initialize
    @clearance_items = []
  end

  def <<(product)
    @clearance_items << product
  end

  def best_deal
    if @clearance_items.first
      by_percentage = @clearance_items.sort_by do |item|
        item.deal
      end
      by_percentage.last.product
    else
        nil
    end
  end
end
