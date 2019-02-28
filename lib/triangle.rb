require 'pry'

class Triangle
  attr_accessor :l1, :l2, :l3, :kind

  class TriangleError < StandardError
  end

  def initialize(l1, l2, l3)
    @l1, @l2, @l3 = l1, l2, l3
  end

  def kind
    array = [@l1, @l2, @l3]
    if array.any?{|l| l == 0}
      raise TriangleError
    elsif l1 == l2 && l2 == l3
      @kind = :equilateral
    elsif l1 == l2 || l2 == l3 || l1 == l3
      @kind = :isosceles
    elsif !(l1 == l2 && l2 == l3)
      @kind = :scalene
    else
      raise TriangleError
    end
  end
end #End of Triangle Class
