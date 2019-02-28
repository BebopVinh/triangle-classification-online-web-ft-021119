require 'pry'

class Triangle
  attr_accessor :l1, :l2, :l3, :kind

  class TriangleError < StandardError

  def initialize(l1, l2, l3)
    @l1, @l2, @l3 = l1, l2, l3
  end

  def kind
    if l1 == 0 || l2 == 0 || l3 == 0

    if l1 == l2 && l2 == l3
      @kind = :equilateral
    elsif l1 == l2 || l2 == l3 || l1 == l3
      @kind = :isosceles
    else
      @kind = :scalene
    end
  end
end #End of Triangle Class
