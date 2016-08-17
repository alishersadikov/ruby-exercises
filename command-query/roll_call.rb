class RollCall
  def initialize
    @names = []
  end

  def longest_name
    @names.sort[0]
  end

  def <<(name)
    @names << name
  end
end
