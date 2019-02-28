require 'pry'

class Triangle
  attr_accessor :l1, :l2, :l3, :kind

  def initialize(l1, l2, l3)
    @l1, @l2, @l3 = l1, l2, l3
  end

  def kind
    if l1 == l2 == l3
      @kind = ':equilateral'
    end
  end
end #End of Triangle Class
