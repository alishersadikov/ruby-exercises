require 'pry'
class Children
  def initialize
    @children = []
    #child = Child.new
  end


  def <<(child)
    @children << child
  end

  def eldest
    # sort_by
    kids_by_age = @children.sort_by do |child|
      child.age
    end
    kids_by_age.last
  end

end



  # def eldest
  #   @children.values.sort.last
  # end
  #
  # def name
  #   children.key[eldest]
  # end
